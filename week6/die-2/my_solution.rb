# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A new instance of the Die class with six sides, represente by symbols (in this case, single letter strings) instead of numbers.
# Output: A random roll---in this case, one of the strings.
# Steps:

# 1. Populate the initialize solution to accept an array of labels, with a length greater than 1.  (We will use 6)

# 2.  Raise an ArgumentError if the given array is empty.

# 3.  Set the sides of dice equal to the length of the array.

# 4.  Select a random element from the array to represent a roll of the dice.


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels.empty?
      raise ArgumentError.new("No dice.  Die.new must have more sides")
    end
    return @labels
  end

  def sides
    @sides = @labels.length
  end

  def roll
    @labels.sample
  end
end

array = %W(A B C D E F)

die = Die.new(array)
puts "Here's what is on your die: #{array}"
puts "Number of sides are: #{die.sides}"
p "Your roll is: #{die.roll}"

# Refactored Solution

# I'm not sure I can refactor this more--the code is already pretty clean!  I did add some driver code at the bottom to make my solution clear.


# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# I felt like the main differences between this one and last week's were:

#   1. There was an extra step (@labels.length) to calculating the number of sides
#   2. I used .sample instead of rand to simulate a roll of the dice

# Otherwise, the logic felt much the same as what I did last week, making this an easy warmup challenge today!

# What does this exercise teach you about making code that is easily changeable or modifiable?

# It means that classes are bomb because it's simple to change the conditions for initializing or class methods, and then all my instances will automatically follow this new, central blueprint.

# What new methods did you learn when working on this challenge, if any?

# I already knew about .sample from a previous challenge and I was SUPER excited when I realized I knew how to solve this already.

# What concepts about classes were you able to solidify in this challenge?

#   1. Raising exceptions was something I was glad to see again; I had to double check the syntax and appreciated the additional exposure.
#   2. It was fun tinkering with the Class to make sure the methods did what I want them to---I like being at a place with Ruby where the error messages are fun to decode versus terrifying!