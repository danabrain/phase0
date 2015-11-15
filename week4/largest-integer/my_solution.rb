# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)

  return nil if list_of_nums.length == 0

  return list_of_nums[0] if list_of_nums.length == 1


  test_num = list_of_nums.pop
  solution = []
  not_the_answer = []

    list_of_nums.each do |num|
      if num > test_num
        not_the_answer << test_num
        test_num = num
      else
        not_the_answer << num
      end
    end

    solution.push (test_num)

    return solution[0]end