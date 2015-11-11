# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:Array of numbers, which can be integers or floats (argument)
# Output:Sum of the numbers in the Array (sum)
# Steps to solve the problem.

# Loop through the array and add each element to the last, keeping a running total sum.

# each do loop
#   set a variable equal to 0 to start
#   add each element to this variable as the loop runs
#   the return value will be this variable when the loop is Complete

# my_array = [1,2,3]
# Find the length of the array---> 3
# Access each element using length: n = array.length
# sum = array[0] + array[1] + array [2] + array [n-1]

# expected sum = 6

# def total(an_array)
#   sum = 0
#   an_array.each do |num|
#     sum = sum + num
#   end
# end

# 1. total initial solution

# def total(array)
#   n = 0
#   sum = 0
#   while n <= array.length - 1
#     sum = sum + array[n]
#     n +=1
#   end
#     return sum
# end

# 3. total refactored solution

def total(array)
  array.inject { |sum, n| sum + n}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: Strings connected by a space with the first word capitalized and the last word followed by a period.

# Steps to solve the problem.


# 5. sentence_maker initial solution

# def sentence_maker(array)
#   n = 0
#   while n <= array.length - 1
#     if n == 0
#       sentence = array[n].to_s.capitalize
#     else
#       sentence = sentence + " " + array[n].to_s
#     end
#     n +=1
#   end
#     sentence = sentence + "."
#     return sentence
# end


# 6. sentence_maker refactored solution

def sentence_maker(array)
  sentence = array.join(" ")
  sentence = sentence.capitalize + "."
end