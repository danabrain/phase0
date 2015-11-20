# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

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

# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
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