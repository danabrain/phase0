# Your Names
# 1) Dana Breen
# 2) Michael Du

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

  message =  "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"

  if serving_size_mod > 0
    p message + ". You have #{serving_size_mod} leftover ingredients. Suggested baking items:"
    reversed_library = Hash[library.to_a.reverse]
    loop do
      reversed_library.each do |item, q|
        if serving_size_mod >= q
          puts "You can make #{serving_size_mod/q} of #{item}."
          serving_size_mod = serving_size_mod % q
        end
      end
      break if serving_size_mod == 0
    end
  else
    p message
  end

end

#FEATURE PSEUDOCODE:
# 1.  Check the modulus against the values (largest to smallest) inside the library hash
# 2.  If the modulus is greater than or equal to a value, we will recommend that item and subtract that value from the modulus.
# 3.  This should continue until modulus == 0

serving_size_calc("pie", 7)
serving_size_calc("pie", 8)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
What did you learn about making code readable by working on this challenge?

I learned that good code goes a long way--the code that we started with was a total mindbender.  I realized that straightforward logic and clean code are super important.

Did you learn any new methods? What did you learn about them?

Yes!!  We learned how to reverse a hash by converting it to an array, using the array reverse method, and then converting it back to a hash (so not really a new method but a new way of stringing methods together).  It was cool to see it work.

What did you learn about accessing data in hashes?

I learned that certain things (like .values_at) return an array, which then needs to be accessed by using the index value even if the array has only one element.  Little things like this are confounding until I really have them explained with an example.

What concepts were solidified when working through this challenge?

I'm feeling more confident with my pseudocoding.  I'm still always slightly terrified when starting a challenge, but honestly, this was was really fun.  I felt lit up and engaged---it felt really good to have enough exposure to the Ruby Docs to know what to look for rather than feeling totally lost and helpless.  Plus, my pair was great!