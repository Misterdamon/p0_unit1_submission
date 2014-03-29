# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
#    What I learned from this solution
	# From this solution, I learned how to use self.clone to create a new object id for the output of pad() that would make the method non-destructive.
# Copy solution here:
# This solution was created by Jason Matney and Ken Sin	
=begin
class Array 
    def pad(min_size, pad_value = nil)
      output = self.clone
      difference = min_size - output.length
    		if difference <= 0
        	return output
   			else  
       		difference.times { output << pad_value }
       		return output
   			end
  	end
  
  def pad!(min_size, pad_value = nil)
        difference = min_size - self.length
    if difference <= 0
        return self
   else  
       difference.times { self << pad_value }
       return self
   end
  end
end

=end

# 2. Second Person's solution I liked
#    What I learned from this solution
	# I liked this solution because it was very easy to follow and it uses some of the more specific ruby methods that I hadn't used yet
	# I also liked it because it has a very different logical structure from my own solution.
# Copy solution here:
# This solution was created by Kevin Zhou and Jake Huhn
=begin
class Array 
    def pad!(pad_length, pad_value = nil)
        until self.length >= pad_length
            self << pad_value
        end
        self
    end
     
    def pad(pad_length, pad_value = nil)
        new_array = self.clone 
        until new_array.length >= pad_length
            new_array << pad_value
        end
      new_array 
    end
end 
=end
# 3. My original solution:
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

# 4. My refactored solution:
class Array 
	
	def pad!(padSize, padVal = nil)
		until self.length >= padSize # I replaced my original code with an until loop because I found it easier to follow along
      self << padVal # I liked that this code was efficient because it just adds the padVal to the array until the array size becomes greater or equal to the padded array size
    end
    self #returns modified original array
	end

	
	def pad(padSize, padVal = nil)
		
		if padSize <= self.length # in the case of the nondestructive pad() method, I felt it was more efficient to check to see if the padSize is less than the original array size, before going into the loop logic
			self.clone #I added self.clone to my code because I think it is easier to read and understand than Array.new(self), which accomplishes the same thing. Plus is didnt need to store the clone in a new variable
		else
			self + Array.new(padSize - self.length, padVal) #returns original array concatenated with a new array that adds the specified number of pad values to the end of the original and returns it with a new object id
		end
	end

end



# 5. Reflection
=begin
	For this challenge, I found it very helpful to look at the code of others to see how their techniques differ from mine, and I gained some new insight on how 
	to structure my code so that it is both easy to read and logically efficient. The only trouble I had with this challenge was figuring out whether or not other
	people's solutions were actually more efficient than mine, i.e. did it run faster, is it easier to read, is there too much logic on one line. With a short challenge
	such as this, it was difficult to determine how I should actually refactor my code. I primarily added new code just because it was easier to follow along with,
	but essentially did the same thing as my original code. It was cool to see how others accomplished the same task in different ways though, and I learned a lot about
	some more specific ruby methods. In general I feel very comfortable with the learning objectives and enjoyed this challenge greatly because I got to see others' 
	code in action and was able to learn a great deal from them. 
=end