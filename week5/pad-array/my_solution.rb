# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

=begin
INPUT: Obtain an array, the min size of the array, and a optional container object to pad the array with (default nil)

Create a method that takes up three arguments

If the length of the array is eq or more to the min size Then
    return the orginal array
If the length of the array is less than the min size Then
  retrun a new object that meets the min length req.
  If the optional argument != nil Then
    pad the array with the optional argument
  End IF
END IF

OUTPUT: Return array with atleast the min size length
=end

# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size || min_size == 0
    p array
  elsif array.length < min_size
    push_obj = min_size - array.length
    push_obj.times {array.push(value)}
    p array
  end
end

def pad(array, min_size, value = nil) #non-destructive

 padded_array = []
 padded_array = padded_array << array

  if array.length >= min_size || min_size == 0
    return padded_array.flatten
  elsif array.length < min_size
    push_obj = min_size - array.length
    push_obj.times { padded_array.push(value) }
    return padded_array.flatten
  end
end


# 3. Refactored Solution

# (see above---we forgot to save our initial solution as a separate solution.)

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# Yes!  It felt really manageable to break everything down into pieces, and made the code seem manageable---small bits of things we already knew how to do, just pieced together in new ways.  It was fun!

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# We were.  Nicolette was an awesome pseudocoder---and I felt like we had very clear pseudocode to work with.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# We had to play around with a few things to get our non-destructive method to return a different array.  It was fun to investigate object_id with irb and figure out a way to do it.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# We used flatten which was fun becuase it was new for Nicolette and something I've seldom used.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I feel like it's pretty readable!  We were proud of our code.

# What is the difference between destructive and non-destructive methods in your own words?

# A destructive method irrevocably changes the original object, where as a non-destructive method returns a new object which is based on the original one, but transformed in some way.

