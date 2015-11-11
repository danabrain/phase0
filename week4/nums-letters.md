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

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles integer operations with methods that add (+), subtract (-), multiply (*), and divide (/).

#What is the difference between integers and floats?

Integers are whole (non-decimal) numbers.  Floats are decimal numbers.

#What is the difference between integer and float division?

Integer division rounds down to the nearest whole number if the outcome is a decimal.  Floats will display the decimal.

#What are strings? Why and when would you use them?

Strings are objects identified by Ruby with double or single quotes.  Strings are used all the time--to output to the console, to take user input, to populate arrays and hashes.  Strings are used all over Ruby any time you need to manipulate a set of characters (generally a word or letter, though you can set integers equal to strings too).


#What are local variables? Why and when would you use them?

Local variables are defined in the file you're currently running.  Ruby won't know anything about them outside of this file because of their limited scope.

#How was this challenge? Did you get a good review of some of the basics?

Yeah, this was fine once I figured out I had to put my variables at the top of the page, not the bottom!  Hehe.

Assignments:

https://github.com/danabrain/phase-0/blob/master/week-4/defining-variables.rb

https://github.com/danabrain/phase-0/blob/master/week-4/simple-string.rb

https://github.com/[USERNAME]/phase-0/blob/master/week-4/basic-math.rb


