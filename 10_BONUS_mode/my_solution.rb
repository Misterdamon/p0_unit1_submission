# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Chris Aubuchon

# 1. Pseudocode

# What is the input?
	# The input for mode() is an array of numbers or strings
# What is the output? (i.e. What should the code return?)
	# The code should return an array of numbers or strings that have the highest frequency of occurrence in the input array
# What are the steps needed to solve the problem?
=begin 
		--define mode() to take a single array of numbers or strings as an argument
			-- assign count to an empty hash initialized with 0
				-- iterate through each value in input array
					- count the number of occurrences of each value in input array
						- increment the value of count[x] for each occurence of a value
				-- assign max_val to max value of frequency for items in count
			-- if all values in input array occur the same number of times
				- return input array
			-- else iterate through input array
				- keep all values that have the highest occurrence as max_val
				- delete duplicate values and return array
=end	
# 2. Initial Solution
=begin
def mode(array)
  count = Hash.new(0)  
    array.each do |x| count[x] += 1 end
    max_val =  count.values.max
    
    if array == array.uniq
        return array
    else
        array1 = array.keep_if do |x| array.count(x) >= count.values.max end
        array1.uniq!
    end
end
=end

# 3. Refactored Solution

# I refactored my solution to remove unneccessary variables and make the code more concise. 
def mode(array)
    count = Hash.new(0)  
    array.each do |x| count[x] += 1 end #counts number of occurences and stores in count hash
    
    if array == array.uniq # if array values occur equally, return array
         array
    else
        array.keep_if{
        	|x| array.count(x) >= count.values.max #keep all values that occur same number of times as highest count{} frequency
      	}.uniq!
    end
end


# 4. Reflection 
=begin
	When attempting this challenge, we looked at the rspec tests for each situation and determined how to proceed.
	The pseudocode for this challange was a bit harder to write because we had a general idea of how to get the problem done,
	but did not know specifically how to implement it. It was nice to use some of the cooler ruby enumerable methods in this challenge
	because I hadn't had too much experience with them up til this point. At first we tried to do it without a Hash to keep track of the occurrences,
	but soon realized that we would need to keep track of them at some point so we decided to include a Hash to store the frequency, and then
	compared the values of the input array to the frequencies of this Hash. Array#uniq was another method that came in handy for this challenge because it deletes
	all duplicate values in an array. I enjoyed learning how to use more of the ruby methods because I know we will have to use them 
	frequently in the future. Overall I feel comfortable with the learning objectives, and I found this challenge very enjoyable because we got to use some more 
	complicated methods that were specific to our purposes, in addition it was great to work on a harder challenge because I find that I learn a lot more by working on
	something just beyond my ability level.
=end