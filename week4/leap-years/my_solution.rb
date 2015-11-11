# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(year)

  if year % 4 == 0
    if year % 100 != 0
      return true
    else
      if year % 400 == 0
        return true
      else
        return false
      end
    end
  else
    return false
  end

end