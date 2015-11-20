# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.delete_if {|x| x.to_s.index(thing_to_find) == nil}
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|x,y| y == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
# .delete_if removes elements from an array that do not satisfy a certain condition
# .to_s converts to a string
# .index finds the position of an element within an array
# .select allows you to select pairs of a hash satisfying certain conditions
# .keys returns an array of keys from a hash

# Person 2
# takes an array (i_want_pets) and number to be added to all internal numbers.  It should permanently alter the original array and hash.
# iterate through array and find elements that are integers
# add one to each element that is an integer
# return original array with modifications permenantly made

def my_array_modification_method!(source, thing_to_modify)

return source.collect! { |item| item.is_a?(Fixnum) ? item + thing_to_modify : item}
end

# takes a hash (my_family_pets_ages) and iterates over each key/value pair
# adds 2 to each value
# modifies original hash

def my_hash_modification_method!(source, thing_to_modify)

return source.each_with_object(source) { |(key, value), hash| hash[key] = value + thing_to_modify}
end


# Identify and describe the Ruby method(s) you implemented.
# .collect! runs the code block for each item in the array
# .is_a?() returns a boolean value for whether the object tests true for the parameter
# ? : tertiary operators to run an if/else statement all on the same line
# .each_with_object() runs the code block for each item in the block and returns the given object (parameter)


#I used .collect! for the first part of the problem because I needed a method that would run a code block for each element in an array and permanently alter the array.  The destructive version of collect was perfect for this---I could pass it the block of code I needed (check to see if the element is a Fixnum and add 2 if possible), and know it would return the original array, with the modifications made permanent.

#I used each_with_object for the second part after much trial and error.  I couldn't find a way to permanently alter the hash until I tried out this method.  I also ran into several methods that would return the values I wanted in an array, but not in a permanently altered hash.  What's nice about this method is I could pass in the object I wished to have the method return (in this case, the original object, or source).

#For collect!, you pass a parameter and the code block you'd like to have operated on that parameter.  For each_with_object, you pass a parameter and the object you'd like to have it return.

#I thought the blog post on how to read the Ruby docs was really helpful.  I also read Ch. 10 in Well-Grounded Rubyist first and that was really helpful.  I wish I had more tricks--I used a lot of trial and error to be honest!

# Psudeocode
# Method 1 - alphabetize array
# Input - An array of strings and numbers
# Output - An array of strings and numbers sorted by size/alphabetical order
# 1 create a method
# 2 The method should take an array as an argument
# 3 the array should check the contents of the list
# 4 if there are only strings or only intigers it should return the array,  sorted
# 5 if there are both strings and intigers
#   the method should create a new array
#     the method should test each item and if it is an intiger it   should remove it from the original array
#       it should add the integer to the new array
#         it should sort the array after all integers from the old array are added to the new array.
# 6 it should sort the old array after all the integers have been removed
# 7 it should add the contents of the old array to the new array
# 8 it should return the new array
# Method 2 - Sort hash
# 1 Create a method
# 2 The method should accept a hash
# 3 Create an empty array
# 4 the method should separate each pair of key values into an array
# 5 the method should populate each pair array into the newly created empty array
# 6 the new array should be sorted by the value of each pair
# =end

# Person 3 Initial Solution
#def my_array_sorting_method(source)
  # num_array = []
  # string_array= []
  # sort_array = []

  # i_want_pets.each {|item| num_array.push(item) if item.is_a? Integer}
  # i_want_pets.each {|item| string_array.push(item) if item.is_a? String}

  # sort_array = num_array.sort
  # sort_array.concat(string_array.sort)
  #end

#Refactor

def my_array_sorting_method(source)

  sort_array = []
  string_array= []

  i_want_pets.each {|item| sort_array.push(item) if item.is_a? Integer}
  i_want_pets.each {|item| string_array.push(item) if item.is_a? String}

  sort_array.sort!.concat(string_array.sort)
end

#refactoring even further might use .dup

def my_hash_sorting_method(source)
  source.sort {|k,v| k[1]<=>v[1]}
end




# Identify and describe the Ruby method(s) you implemented.
# The array method was pretty tricky to start with because sort won't work on a mix of strings and intigers. I tried a few different failed approaches. Leaving sort, and the Array docs behind I switched to the class object docs. Using the Integer docs I tried to see if I could force the result to be false when performing a mathematical operation on a string. Error. I tried to test if it was even or odd as a way to test if it was a fixnum. I hoped I would get a false and be able to use that as a conditional. Error. It took a while but I eventually found the appropriate method to do what I wanted all along in the Object docs- is_a? - which returns true/false if it is a type of object specified.
# Once I was able to isolate the nums from the strings I had to put them each in new arrays because the method needs to be nondestructive of the original array. I got some weird and unexpected results when trying collect/!, map/! or sort!. on the new array.
#
#The hash method turned out to be right in the docs. If you call sort on a hash it creates an array with a nested subarray for each key/value pair. the bit with the k[]<=>v[] tells it it in which direction to sort and by which index value of the array. I just changed the variable to k,v to be more relevant to the challenge. Each array is only 2 items long. So you can either sort by the first index or the second index. The first[0] is the keys and the second[1] is the values. If you want the keys to determine the sort you would use [0].If you just switch it to v<=>k, it will sort by descending instead of ascending. If you put in an index higher than the last index in the array, in this case 2 or higher, it just returns the original array unsorted. I was expecting something else ecause I figured nil would get invlolved and do something weird.
#


=begin

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
source.delete_if {|name| name.to_s.include?(thing_to_delete)}
return source
end

def my_hash_deletion_method!(source, thing_to_delete)
source.delete_if {|name| name.to_s.include?(thing_to_delete)}
return source
end

# Identify and describe the Ruby method(s) you implemented.
# delete_if: iterates over array and deletes elements if code block evaluates to true
# to_s: converts to string
# include?: checks if string includes argument and returns True if so



# Person 5

def my_array_splitting_method(source)
  big_array = []
  first_array = []
  second_array = []
  source.each do |thing|
    if thing.to_i == thing
      first_array.push(thing)
    else
      second_array.push(thing)
    end
    end
    return big_array.push(first_array).push(second_array)
end


def my_hash_splitting_method(source, age)
  big_array = []
  first_array = []
  second_array = []
  source.each do |x,y|
    if y<=age
      first_array.push([x,y])
    else
      second_array.push([x,y])
    end
  end
  return big_array.push(first_array).push(second_array)
end


# Identify and describe the Ruby method(s) you implemented.
# I used each in order to iterate each of the elements in the array/hash in order to find out if they met the conditions
# The conditions being: is it an integer? for the first one, and "is the value less than or equal to the age argument?"
#then I used the push method to push the two separated arrays into one big one!

#

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#