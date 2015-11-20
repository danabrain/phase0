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



