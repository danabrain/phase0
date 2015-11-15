# Count Between

# I worked on this challenge [by myself ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  return 0 if list_of_integers.empty?
  return 0 if upper_bound < lower_bound

  test_num = list_of_integers.pop
  out_of_bounds = []
  solution = []

  if test_num > upper_bound || test_num < lower_bound
    out_of_bounds << test_num
  else
    solution << test_num
  end

  list_of_integers.each do |num|
    if num > upper_bound || num < lower_bound
      out_of_bounds << num
    else
      solution << num
    end
  end

  return solution.length

  # OR USE delete_if METHOD:
  # new_list = list_of_integers.delete_if {|num| num > upper_bound || num < lower_bound}
  # return new_list.length

end