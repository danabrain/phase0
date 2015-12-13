# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)

  #Takes input, turns all to lowercase and splits into an array.
  input = coded_message.downcase.split("")

  #Creates holder for solution.
  decoded_sentence = []

  #This could be automated with letters in an array and a method that subtracts 4 from the index of the given letter to go backwards in the alphabet.  Use each_with_index on the letter array.
  cipher = {"e" => "a",
            "f" => "b",
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}


  input.each do |x| #Move through each element of input array
    found_match = false  # Set to false so that Ruby will move through the cases and find a match.
    cipher.each_key do |y| #Move through each key of cipher hash
      if x == y  #Comparing character in input array against current key in the each_key loop to see if they match.  X comes from first each loop, y from each_key loop.
        decoded_sentence << cipher[y] #puts value associated with matched key into answer array
        found_match = true
        break  #Breaks sub-loop to go back to looping through input array
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #These will put spaces into the answer array--they look like special character cases.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) #Makes an array of the range of numbers
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?--any characters that weren't matched.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #This returns a joined string from the decoded sentence array.
end

# Your Refactored Solution

def dr_evils_cipher(coded_message)

  input = coded_message.downcase.split("")

  decoded_sentence = []

  cipher = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  input.each do |x|
    found_match = false
    cipher.each_with_index do|y, index|
      if x == y
        decoded_sentence << cipher[index-4]
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x)
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

What concepts did you review or learn in this challenge?

I reviewed creating arrays of strings using the %w methods, I reviewed some methods like using .include? on a range, and looping through arrays.

What is still confusing to you about Ruby?

Ruby feels like an old friend after Javascript.  I'm excited to do increasingly complex challenges in Ruby.

What are you going to study to get more prepared for Phase 1?

I'd like to complete all these review exercises.