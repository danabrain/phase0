# 0. Pseudocode

# What is the input?
#Array of numbers or strings

# What is the output? (i.e. What should the code return?)
# return an array with the most frequent values
# if there is only 1 frequent value it returns a one element array
# if all values have the same frequency return the array
# What are the steps needed to solve the problem?
# BEGIN
#   SET max_frequency to zero
#   FOR each item in list
#     IF  list item count > max_frequency
#       SET max_frequency = list item count
#     ENDIF
#   ENDFOR

#   FOR each item in the list, keep the item if
#     list item count = max_frequency
#   ENDFOR
# END

# array = [1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4]
array = []

max_frequency = 0
array.each do |item|
  if array.count(item) > max_frequency
    max_frequency = array.count(item)
  end
end
array.keep_if {|item| array.count(item)== max_frequency}

p array

# refactored solution:

def mode(array)
  max_frequency = 0
  array.each {|item| max_frequency = array.count(item) if array.count(item) > max_frequency}
  array.keep_if {|item| array.count(item)== max_frequency}
end

# Which data structure did you and your pair decide to implement and why?

# It took us a long time and several tries at different things to land on using an array.  We started with an array, moved to a hash, and came back to array after researching more about Enumerable and how we can use the methods in this class to help us iterate through a data collection.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# I had a great time psuedocoding with my last pair, but I thought we did a good job this time too.  Our solution changed so much that our original psuedocode was probably too specific.  Next time, it will be more general and less process specific.

# What issues/successes did you run into when translating your pseudocode to code?

# Um, tons.  We couldn't figure out how to move through the data collections the way we wanted, we were kind of cobbling together complex solutions filled with duct tape and hope...but it was honestly absorbing and fun and I really enjoyed the challenge!

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used each and keep_if, but we had the chance to play around with include?, has_value, and several other methods that we ultimately didn't use.

