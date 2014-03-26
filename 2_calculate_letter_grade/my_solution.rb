# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
	# The input in this case would be an array of numbers.
# What is the output? (i.e. What should the code return?)
	# The output will be a letter grade that is determined based on the average of 
	# the scores in the input array
# What are the steps needed to solve the problem?

=begin
	Pseudocode:
		- define get_grade() that takes a single array as input
			- get total of all scores in array
				- divide total by number of scores to get average
			- create switch(average) statement
				- case score >= 90 -> A
				- case score >= 80 -> B
				- case score >= 70 -> C
				- case score >= 60 -> D
				- case score < 60 -> F 
=end

# 2. Initial Solution
=begin

	def get_grade(scoreArray)
		
		avg = scoreArray.reduce(:+) / scoreArray.length
		
		case avg
			when 90..100
				return 'A'
			when 80..89
				return 'B'
			when 70..79
				return 'C'
			when 60..69
				return 'D'
			else
				return 'F'
		end
	end

=end	

# 3. Refactored Solution

	# The only refactoring I did in this challenge was to make my switch statement
	# more concise and readable, and used implicit return rather than typing out return
	# every time for each case.

def get_grade(scoreArray)
		
	avg = scoreArray.reduce(:+) / scoreArray.length
		
	case avg
		when 90..100 then 'A'
		when 80..89 then 'B'
		when 70..79 then 'C'	
		when 60..69 then 'D'
		else 'F'	
	end
end


# 4. Reflection 
=begin
	In this challenge, I started by looking at the requirements for the rspec tests
	and then began working on a solution that would satisfy all the conditions.
	I already knew how to find the total of an array from the total() function we did for
	challenge 1, so finding the average of an array was rather easy. I felt that using a switch
	statement was more efficient and concise compared to an if/else branching system. I always seem to
	forget the case statement syntax so I looked on the ruby documentation to find it and it ended up working
	in this scenario. Overall, I feel very comfortable with the learning objectives, and I found this challenge
	was very enjoyable to go through and get some more practice writing ruby code. I didn't really find any of 
	the challenge to be tedious at all.
=end 
