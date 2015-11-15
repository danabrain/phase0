# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# go through array

# compare 1st element to all other elements,

# Unsorted Array: [1,2,3]

# Take 1 and compare it to 2 and 3, if it's smallest, put it aside.

# Otherwise, take 2 and compare it to 1 and 3, if it's smallest, put it aside.

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!

  return nil if list_of_nums.length == 0

  return list_of_nums[0] if list_of_nums.length == 1


  test_num = list_of_nums.pop
  solution = []
  not_the_answer = []

    list_of_nums.each do |num|
      if num < test_num
        not_the_answer << test_num
        test_num = num
      else
        not_the_answer << num
      end
    end

    solution.push (test_num)

    return solution[0]

end

#Or I could have just used list_of_nums.sort and returned list_of_nums[0], which would have saved me 2 hours!! :)