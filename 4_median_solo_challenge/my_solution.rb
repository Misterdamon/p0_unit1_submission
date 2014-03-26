# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
	# The input for median() would be a single array of numbers or strings
# What is the output? (i.e. What should the code return?)
	# the code should return the median value (value at the middle index) for an array, with either even or odd lengths.
# What are the steps needed to solve the problem?
=begin
	-- define median() to take a single array as an argument
		-- sort array from smallest to largest, or alphabetically in the case of a string array
		-- find middle index of array ((array.length - 1) / 2.0)
			- must divide by 2.0 and not 2 so that midIndex is a decimal value if array length is even
		-- if array length is odd
			-return array element at middle index
		-- if array length is even 
			-return (array value at midIndex.floor + array value at midIndex.ceil ) / 2.0 
			- you must divide by 2.0 instead of 2 in order to get a decimal value for the median
=end

# 2. Initial Solution
=begin
def median(array)
	sorted = array.sort #sorts numbers from smallest to largest, and strings alphabetically. sort! changes the original array
	midIndex = (array.length - 1 ) / 2.0

	if(array.length % 2 == 1)
		sorted[midIndex]
	else
		(sorted[midIndex.floor] + sorted[midIndex.ceil]) / 2.0
	end
end
=end

# 3. Refactored Solution
	
	# I refactored my solution and realized that I didn't need to store the sorted array in a separate variable, and could just change the original array to a sorted array which removed a line of code.

def median(array)
	#finds middle index of sorted array -- I needed to divide by 2.0 in order to get a float for the middle index if the length is even
	midIndex = (array.sort!.length - 1 ) / 2.0

	if(array.length % 2 == 1) # if array length is odd, return val at midIndex
		array[midIndex]
	else #if array length is even, add values at midIndex.floor and midIndex.ceil and divide by 2.0
		(array[midIndex.floor] + array[midIndex.ceil]) / 2.0
	end
end



# 4. Reflection 
=begin
	In this challenge, I used the same strategy of looking at the rspec tests to determine how to proceed. I had already created a function to calculate a median value
	in our group challenge last week, so it was really just a matter of figuring out how to implement it in ruby instead of javascript. I found that it worked for most of the tests,
	but I had a little bit of trouble because I found out that some of my division operations were actually using integer division instead of float division, so I got an incorrect
	value for the middle index at first. But after realizing my mistake the code worked fine. I learned that the ruby sort function will automatically sort an array of numbers (from smallest to largest) or 
	strings (alphabetically from a-z) without having to put in a separate block to determine how to sort them (unless you wanted to sort the array in a different way). I feel very comfortable 
	with the learning objectives so far, and it was cool to see the differences between ruby and javascript when implementing the same function. I found this challenge very enjoyable because 
	I got to use more cool ruby methods and to do some more difficult operations with arrays.
=end