def bottles_of_beer
  n=3
  while n > 2
    puts "#{n} bottles of beer on the wall, #{n} bottles of beer, take one down, pass it around, #{n-1} bottles of beer on the wall!"
    n-=1

  end

  while n==2
    puts "#{n} bottles of beer on the wall, #{n} bottles of beer, take one down, pass it around, #{n-1} bottle of beer on the wall!"

  n -=1

    puts "#{n} bottle of beer on the wall, #{n} bottle of beer, take one down, pass it around, no more bottles of beer on the wall!"
  end

end


bottles_of_beer


def deaf_grandma
  bye_count = 0

  puts "Say something to Grandma!"
  phrase = gets.chomp

while true
  if phrase != phrase.upcase
    puts "HUH?! SPEAK UP, SONNY"
    bye_count = 0
    phrase = gets.chomp

  elsif phrase == phrase.upcase && phrase != "BYE"
    bye_count = 0
    puts "NO, NOT SINCE " + (rand(90) + 1930).to_s + "!"

     phrase = gets.chomp

  elsif phrase == "BYE"
        puts ""
        bye_count +=1
        phrase = gets.chomp

      if bye_count == 2
        break
      end
  end
end
end

deaf_grandma

def leap_years

  puts "Enter a year."
  start_year = gets.chomp.to_i
  puts "Enter another (later) year!"
  end_year = gets.chomp.to_i
  puts "And now I will calculate the leap years between the two!  Hold please."

  year = start_year

  while year <= end_year

    if year % 4 == 0 && year % 400 == 0
      puts "#{year} is a leap year."

    elsif year % 100 == 0 && year % 400 != 0
      puts ""

    elsif year % 4 == 0
      puts "#{year} is a leap year"

    else
      puts ""

    end

    year += 1

  end

end

leap_years()



