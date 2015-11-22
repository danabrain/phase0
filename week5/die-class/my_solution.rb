# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: method call .roll to a created instance variable, die, of the Die class that I will make
# Output: A random number, 1-6, to simulate a die roll
# Steps:
# 1.  Make a Die Class
# 2.  Initialize it with number of sides (6)
# 3.  Create an exception that will raise an error if the argument < 6
# 4.  Give it a roll method that will output a random number 1-6
# 5.  Make a die object, and call roll on it.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
  end

  def sides
    unless @sides == 6
      raise ArgumentError.new("No dice.  Die.new must have 6 sides")
    end
    return @sides
  end

  def roll
    rand(1..6)
  end
end

die = Die.new(6)
puts die.sides
puts die.roll

# 3. Refactored Solution

# Ummmm...I feel like the code is already pretty concise.  I don't think I could make it any more spare!

# # 4. Reflection

# What is an ArgumentError and why would you use one?

# An ArgumentError is raised when the argument given (in this case, sides), results in something impossible for the written logic to implement.  In this case, we used on because a die can't have negative sides, or 1 side.  There needed to be a specific number (6) to simulate a die roll.  Argument Errors are also raised when a method expects a certain number of arguments but recieves too many or too few.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I used .rand, and nothing more...there really wasn't even anything to refactor as this was a fairly sparse method.

# What is a Ruby class?

# A class is an object, and it is a collection of methods.

# Why would you use a Ruby class?

# I'd use a Ruby class if I needed to create an instance of an object more than once.  For example, if I had to describe a customer for my business with certain attributes like name, age and zipcode, I could create a Customer class, instantiate each instance of Customer with a name, age, and zipcode through an instantiation method.  Then, I could create class methods that would let me manipulate Customer objects, for example, a customer.payment_method method would pull up their credit card information.

# What is the difference between a local variable and an instance variable?
# Where can an instance variable be used?

# A local variable's scope is constrained to the method where it is created and used, whereas an instance variable maintains its state as long as the instance it is connected to still exists.  I can instantiate a customer of my Customer class, and assign values to the instance variable @name, and then access @name outside the initialize method.  The value assigment for this customer instance will maintain its state through the life of the customer object.






