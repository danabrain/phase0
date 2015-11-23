

# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. Pseudocode

# What is the input? An array of numbers between 1 and 100
# What is the output? (i.e. What should the code return?) A letter grade which is the result of averaging all the numbers inside the array and converting to letter.
# What are the steps needed to solve the problem?
# 1.  Sum all the numbers in the array.
#       There is a Ruby method that will allow this (I think inject), but I'm wondering if it could be initially solved without it.  Perhaps by using an iterator like each.
# 2.  Divide this total by the number of elements in the array.
#       Array.length
# 3.  Assign a letter grade that corresponds with this number.
#       If or case statements (let's use case!)

# 1. Initial Solution

# grades_array = [89, 99]

# def get_grade(array)
# total_grades = 0
# number_grades = array.length
# i=0

# while i < number_grades
#   array.each do |grade|
#     total_grades += grade
#     i+=1
#   end
# end

# average = total_grades/number_grades
# puts "Average is: #{average}"

# if average >= 90
#   p "A"
# elsif
#   average >= 80
#   p "B"
# elsif
#   average >= 70
#   p "C"
# elsif
#   average >= 60
#   p "D"
# else
#   p "F"
# end
# end

# 3. Refactored Solution

grades_array = [99, 99, 90, 99, 100]

def get_grade(array)
average = array.inject {|sum, n| sum + n } / array.length

if average >= 90
  p "A"
elsif
  average >= 80
  p "B"
elsif
  average >= 70
  p "C"
elsif
  average >= 60
  p "D"
else
  p "F"
end

end
get_grade(grades_array)
# 4. Reflection
