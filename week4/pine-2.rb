# def angry_boss
#   puts "What do you want?"
#   answer = gets.chomp
#   puts "Whaddya mean, " + answer + "?  You're fired!"
# end

# angry_boss()


# def my_array
#   to_sort = []

#   while true
#     puts "Enter a word"
#     word = gets.chomp

#     if word.length > 0
#       puts "Your word is: " + word
#       to_sort << word
#       puts to_sort
#     else
#       break
#     end

#   end

#   puts "Your non-sorted array is: " + to_sort.join(", ")
#   puts "Your sorted array is: " + to_sort.sort.join(", ")

# end

# my_array()

def roman_numerals(number)

  puts ("M" * (number/1000)).to_s
  if ((number%1000)%500) == 0
    puts ("D" * (number%1000/500)).to_s
    if ((number%500)%100) == 0
    puts ("C" * (number%500/100)).to_s
      if ((number%100)%50) == 0
    puts ("L" * (number%100/50)).to_s
        if ((number%50)%10) == 0
    puts ("X" * (number%50/10)).to_s
          if ((number%10)%5) == 0
    puts ("V" * (number%10/5)).to_s
           if ((number%5)%1)) == 0
    puts ("I" * (number%5/1)).to_s
  end
  end
  end
  end
  end
  end


end

roman_numerals(2600)