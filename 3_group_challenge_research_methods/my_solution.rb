# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution -- Adam Ryssdal and Shawn Seibert
def my_array_finding_method(source, thing_to_find)
  # Your code here!
  # select the array elements using include? as a test
  source.select { |x| x.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
  source.select { |k,v| v == thing_to_find}.keys
# 
end

# Identify and describe the ruby method you implemented. 
# select --- selects elements from an array or key-value pairs from a hash
# based on the evalation of the block which follows. Return is an array.
#
#

# Person 2 -- Chris Aubuchon
def my_array_modification_method(array, pets)
  array.inject([]) do |new_array, elements|
		new_array << elements if elements.to_i == 0
		new_array << elements + pets if elements.to_i >= 1
		new_array
	end
end


def my_hash_modification_method(hash, age)
  hash.each {|key, value| hash[key] = age + value}
	return hash
end

# Identify and describe the ruby method you implemented. 
# array_mod I used inject.  I tried using almost every differnt
# method available in the ruby docs and I worked on this for hours
# trying to figure out how to only modify the numbers without modifying
# the text.  Needless to say I finally stumbled upon inject.  The example
# I found only had a single arguement and produced a new array of just 
# the adjusted numbers without the text.  After reading the article a
# few times I understood that I needed only to add a line that passed
# the string values to the new array and a line that modified the numbers

#the hash mod was a relatively easy hash.each method that iterated
# over each key and changed the value accordingly.
#



# Person 3 -- Devin Johnson
def my_array_sorting_method(source)
  result = source.map {|x| x.to_s}
  return result.sort
end

def my_hash_sorting_method(source)
  return source.sort_by{|name, age| age}
end

# Identify and describe the ruby method you implemented. 
# I used a non-destructive map method to create a new array with the same values as the source.  However, all elements in the new array are converted to strings
# Then it was just a matter of sorting the new all-string array and returning the result.
#
# For the hash sorting I used the sort_by method and passed it two arguments, name and age which apply to the key/value pairs of the hash and then I sorted by age
# This returns an array of the key value pairs sorted by ages, or the values


# Person 4 -- Jacob Persing
def my_deletion_method(source, thing_to_delete)
  
  if source.is_a? Array #check to see if source is an array
		source.each do |x| 
  		source.delete(x) if x.include? thing_to_delete 
  	end #end each
  else #if it is not an array, it must be a Hash
  	source.each do |k,v|
  		source.delete(k) if k.include? thing_to_delete
  	end #end each
  end #end if/else

end #end method()

# Identify and describe the ruby method you implemented. 
# I worked on the deletion method for this group challenge.
=begin
	--The deletion method first checks to see if the input is an array
		- if it is an array, the code iterates through each element and checks to see if it includes
				the thing to delete
		- if the element includes the thing to delete, the element will be deleted from the array
		-returns modified source array	
	-- if the source is not an array, in our case it must be a Hash
		- in the case of a Hash, the code will iterate through all keys/values of the Hash
		- if the key contains the thing to be deleted, the key/value pair will be deleted from the Hash
		-returns modified source Hash	
=end
################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
=begin
	For this challenge, I was assigned the deletion method that would remove elements from the array or hash. I began by looking at the tests
	for each case and then structured my code to match them. At first I wrote two methods that would deal with either an array or a hash, but soon realized
		that I could just create one method that would process either one, I just had to check to see if the input was an array first. I was a bit confused at first
		because the test array/hash that is in the driver code did not match the original values that were declared at the start of the program, but after reading though
		the entire challenge I realized that these values would be altered by the other functions that my group created. I learned how to use is_a? to check to see if 
		the source was an array before running through the code which was nice to know. Overall I feel comfortable with the learning objectives for this challenge, and 
		didn't find any portion of it particularly tedious. 
=end