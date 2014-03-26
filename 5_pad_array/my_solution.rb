# U1.W3: Pad an Array!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
	# The input in this case would be an array, a new array size and an optional value to pad the array with
# What is the output? (i.e. What should the code return?)
	# the output of pad!() would be a modified of the original array that is the length of the argument value
	# and has a padding determined by the optional argument
	# the output of pad() would be a new array with size and padding determined by the arguments
# What are the steps needed to solve the problem?
=begin
	-- define pad!() with a new array length as an argument, and optional argument for value of padding
		-- if new length <= original array length
			- return self
		-- else 
			-find added array length by subtracting self.length from newLength
			-push padding value to original array the same number of times as addedLength
			-return self

	-- define pad() with new array length and optional padding value as arguments
		- assign a temporary array to value of original array plus a new array with 
			length = self.length + (newLength - self.length) 
			and assign its value to optional padding argument
		- if newLength <= self.length
			-- return new array with value of self
		- else
			-- find length to be added by substractying tempArr.length from newLength
			-- push padding value to tempArr the number of times specified by added
			-- return self + new array with length = (newLength - self.length) with value == to pdding value
=end
# 2. Initial Solution

=begin
class Array 
	
	def pad!(newLength, default = nil)
		if newLength <= self.length
			return self
		else 
			addLength = newLength - self.length
			addLength.times do self << default end
			return self
		end
	end

	def pad(newLength, default = nil)
		
		tempArr = self + Array.new(self.length + (newLength - self.length), default)
		
		if newLength <= self.length
			return Array.new(self)
		else
			added = newLength - tempArr.length
			added.times do tempArr << default end
			return self + Array.new(added, default)

		end
	end
end
=end

# 3. Refactored Solution
# I refactored my code to remove some unnecessary lines that didn't end up affecting my output
# I also used implicit return and made the variable names more descriptive so that it is easier to read

class Array 
	
	def pad!(padSize, padVal = nil)
		if padSize <= self.length
			self
		else 
			(padSize - self.length).times do self << padVal end
			self
		end
	end

	
	def pad(padSize, padVal = nil)
		
		if padSize <= self.length
			Array.new(self)
		else
			self + Array.new(padSize - self.length, padVal)
		end
	end

end



# 4. Reflection 
=begin
	I found this challenge to be more complicated when compared to the other challenges we were assigned for this week.
	I started by looking at the rspec tests to see what requirements needed to be satisfied, I then went through and wrote pseudocode
	for each portion and did my best to follow it when writing the code. I had some trouble figuring out what to do in order to make 
	pad() non-destructive by returning a new array rather than an altered original array, but after doing some research on the topic
	I soon found out a way to accomplish it by adding the original array to a New array that had the padding in it.
	I also found myself implementing a bunch of unnecessary code that didn't actually accomplish 
	anything, even though the code itself worked and passed all the tests. It was nice to get some more experience with using the 'self'
	object as well as defining pad!() and pad() as Array class methods, instead of passing an array to an arbitrary pad() function. In addition, I was
 	excited to learn about optional arguments for functions because it allows much more flexibility when implementing them. Overall I feel comfortable
	with the learning objectives after working through this challenge. I did find this challenge enjoyable because it was a more difficult
	test of my abilities and required some research into new topics. 
=end