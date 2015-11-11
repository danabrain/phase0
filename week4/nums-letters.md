#What does puts do?

Puts will print the output to the console and include an empty line underneath it.  The return value of puts is "nil".

#What is an integer? What is a float?

An integer is a whole number, and float is a decimal number.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division will round down to the nearest whole number (integer).  Float division will provide a more accurate answer, with decimal points.

```ruby
Hours in a year:

def hours_per_year

  year_num = 24 * 365

  puts "There are " + year_num.to_s + " hours in a year."

end

hours_per_year
```

#This will output 8760.

```ruby
def minutes_per_decade

  minutes_per_decade = 60 * 24 * 365 * 10

  puts "There are " + minutes_per_decade.to_s +
  " minutes in a decade."

end

minutes_per_decade
```

#This will output 5256000