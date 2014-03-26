# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
	# For the total() function, the input would be an array of numbers
	# for the sentence_maker(), the input would be an array of strings and/or numbers.
# What is the output? (i.e. What should the code return?)
	# The total() function output would be the total of all numbers in the array
	# The sentence_maker function would output a concatenation of all strings in an array separated by spaces.
# What are the steps needed to solve the problem?
=begin 

	--define total function
		-- total function takes a single array as argument
		-- loop through each element in array
			-- add value of each element to total
			-- return total
	--define sentence_maker function
		-- sentence_maker() takes a single array as argument
		-- loop through array and concatenate strings to form a sentence with a period at the end.
			-- return sentence

=end


# 2. Initial Solution
=begin
def total(numArray)
		total = 0
		for element in numArray
			total += element
		end
		total
	end



def sentence_maker(strArray)
	strArray.join(" ").capitalize + "."
end
=end

# 3. Refactored Solution
# reduce is an enumerable function that performs a specified operation on each value in an array,
# in this case reduce will add up all values in the array based on the :+ argument.
def total(numArray)
		numArray.reduce(:+)
end

=begin 
		I decided not to refactor my sentence_maker() function because I felt
		that this was the simplest and most concise method of performing the operation. 
		The code takes the array of strings and joins it into a single string with a space in between each word
		then capitalizes that string and adds a period at the end of the sentence.
=end
def sentence_maker(strArray)
	strArray.join(" ").capitalize + "."
end


# 4. Reflection
=begin
	For this challenge, my strategy was to look at the rspec tests and use them to figure out how to structure
	my code. It worked for the most part but I had a bit of trouble going back to Ruby after working with Javascript
	for a while, but soon got the hang of it again. I only had a few questions on ruby syntax while going through the challenge
	but was able to answer them with a little research into the ruby documentation. I have always had trouble understanding the enumerable functions,
	so i decided that I would use one for the total() function just to get more exposure to them and really figure out how they work. I ended up learning
	a lot about how the enumerable functions work, and I find that they are much more concise and efficient than a standard loop once you figure out how they work. 
	In general, I found this challenge to be enjoyable because I enjoy seeing my code pass all the tests once it's done. I feel confident with the learning objectives
	so far and would be able to do more challenging exercises if needed.
=end


