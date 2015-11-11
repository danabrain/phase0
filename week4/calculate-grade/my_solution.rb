# Calculate a Grade

# I worked on this challenge [with Paul].


# Your Solution Below

def get_grade(average)
  #return letter grade
  if average >= 90
    return "A"
  elsif average < 90 && average >= 80
    return "B"
  elsif average < 80 && average >= 70
    return "C"
  elsif average < 70 && average >= 60
    return "D"
  else
    return "F"
  end
end

get_grade(65)