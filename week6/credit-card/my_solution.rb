# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: David Ma ].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: 16 digit number representing a credit card
# Output: true or false (indicating a valid ccd or not)
# Steps:

# 1. Initialize CreditCard Class
# a.  Accepts a number as an argument
# b.  Raise ArgumentError if the number is not 16 digits long
# 2. Define check_card method (which will return a boolean)
#      a. Double every other digit, starting with second to last and working backwards
#      b. Sum up all the digits (breaking down double digits into sums of the two: 20 = 2 + 0)
#      c. If this sum is divisible by 10, return true.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard



  def initialize(number)
    @cardnum = number
    raise ArgumentError.new('Not a valid input, must be 16 digits') if number.to_s.length != 16
    # p "Your card is #{@cardnum}"
  end

  def check_card
    cardnum_array = @cardnum.to_s.split("")
    cardnum_array.each_with_index { |v, i|
      i % 2 == 0 ? cardnum_array[i] = v.to_i * 2 : cardnum_array[i] = v.to_i
      }
    cardnum_array = cardnum_array.join("").split("").map {|i| i.to_i}
    luhn = cardnum_array.inject { | sum, num| sum + num }
    p luhn % 10 == 0

  end

end

# hash = Hash.new

# original = [1,2,3,4,4]

# p new_array = original.each_with_index { |v,i|
#   original[i] = v * 2 if i % 2 == 0
#   }

card1 = 8888888888888888
card2 = 12341234123412345

CreditCard.new(card1).check_card


# Refactored Solution

class CreditCard

  def initialize(number)
    @cardnum = number
    raise ArgumentError.new('Not a valid input, must be 16 digits') if number.to_s.length != 16
  end

  def check_card
    cardnum_array = @cardnum.to_s.split("")
    cardnum_array.each_with_index { |v, i|
      i % 2 == 0 ? cardnum_array[i] = v.to_i * 2 : cardnum_array[i] = v.to_i
      }
    luhn = cardnum_array.join("").split("").map {|i| i.to_i}.inject(:+)
    p luhn % 10 == 0
  end

end


card1 = 8888888888888888
card2 = 12341234123412345

CreditCard.new(card1).check_card

# Reflection

# --------What was the most difficult part of this challenge for you and your pair?

# I can't say there was one--it all ran smoothly.  David is a quick thinker, and we both like writing debugger/driver code, so we checked a bunch of things out, consulted the docs, and found a solution.  It was engaging and fun.

# --------What new methods did you find to help you when you refactored?

# We used each_with_index in both solutions, and it was the first time either of us had used it, so we had to tinker with the return value and make sure we were capturing the outcome we wanted.  We got to use a ternary operator, whic was good practice and feels fancy, and inject, which I've used before but appreciate more practice.

# --------What concepts or learnings were you able to solidify in this challenge?

# I'm feeling more solid with ternary operators, enumerable methods, and converting a data set between several forms (in this case, from integers to strings to arrays and back again.)