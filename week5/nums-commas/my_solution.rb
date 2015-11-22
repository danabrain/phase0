# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer (1000000)
# What is the output? (i.e. What should the code return?)
# Returns a comma-separated integer as a string ("1,000,000")
# What are the steps needed to solve the problem?

# 1.  First, determine if the integer is long enough to need a comma (length >= 4, or int < 1000)
#     --> May need to convert the integer to a string first, and call length on it.
#     --> If the condition passes, we continue, if not, we return the too-short string.
# 2.  Count backwards by 3 from the last digit and insert a comma
      # --> Convert the integer to a string and then an array so we can interate (.to_s.split(""))
#     --> Use negative index to count back from the last digit
#     --> Use insert to add "," every three numbers
#     --> Will have to set up a condition to know how many commas to put in
# 3.  Return the whole thing as a string using .join("") on the array


# 1. Initial Solution

def separate_comma(integer)

    integer_array = integer.to_s.split("")
      index = -1
      counter = 0
      i = integer_array.length
      while index*(-1) <= i + counter
        if index % 4 == 0
        integer_array.insert(index, ",")
        counter += 1
        end
      index -= 1
      end

    p integer_array.join("")

end


# 2. Refactored Solution

def separate_comma(integer)
  integer = integer.to_s
  index = -4
  while index*(-1) <= integer.length
    integer[index] += ","
    index -= 4
  end
  p integer

end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# Pseudocoding really helped me wrap my mind around where to start, but I found myself deviating from my original ideas once I got into the logic of it.  I considered using Strings and Arrays, and several different methods.  It was a lot of trial and error, and research.

# Was your pseudocode effective in helping you build a successful initial solution?

# I was!  I referred back to it and refined it as the problem became more clear to me by running tests to see what worked and what didn't.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I tried SO MANY THINGS with array methods before erasing everything and trying with a string.  I tried each_slice, each_with_index, flat_map, reverse_each, and several more.  There were several times when I just didn't understand why my logic didn't work--I'd run something similar through irb and it would work, but in my program it didn't.  After several hours of failure I started fresh and realized I could do it with strings.

# How did you initially iterate through the data structure?

# I turned it into an array and used a while loop and an index counter to move through the data structure.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# It's definitely more concise!  I guess I thought working with arrays would be easier than working with strings because I had just read about all the enumerable methods--but it turns out using similar logic with a string led to more readable code.