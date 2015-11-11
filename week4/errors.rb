# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
#It was expecting an end, but it didn't get one.
# 5. Where is the error in the code?
#The method was ended but the while loop was not.
# 6. Why did the interpreter give you this error?
#The interpreter scanned the file for the 'end' it was looking for, and when it could not find it, it threw the error.  Loops and methods need to be ended.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#NameError
# 3. What additional information does the interpreter provide about this type of error?
#The method/local-variable "south_park" is undefined.
# 4. Where is the error in the code?
#The method/variable south_park was never defined in this file, so we cannot call it (in the case of a method) or refer to it (in the case of a local variable).
# 5. Why did the interpreter give you this error?
#The interpreter doesn't know what to do with the method call when no method is associated with it.  The method needs to be defined first.  If this is a local variable, we would need to assign a value to the variable in order to manipulate it in some way.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#We have an undefined method "cartman"
# 4. Where is the error in the code?
#We have tried to call a method that does not exist becuase it has not been defined yet.
# 5. Why did the interpreter give you this error?
#It cannot invoke a method that has not been defined.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#66
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#It says we have given (1 for 0), which means we supplied one argument in the method call, when Ruby was expecting 0 based on the setup of the method (no parameter).
# 4. Where is the error in the code?
#In the method call ("I hate Kyle")
# 5. Why did the interpreter give you this error?
#We defined this method with no parameters, which means Ruby was not expecting any arguments.  When we supplied an argument in the method call, Ruby did not know where to put it and threw and error.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#85
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#In this case, the error is (0 for 1).
# 4. Where is the error in the code?
#Ruby was expecting an argument in the method call, because we set the method up with a parameter.
# 5. Why did the interpreter give you this error?
#When we called the method, we did not supply an argument, so Ruby said, "I was expecting one argument and you gave me 0."



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#106
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#Now we have the wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#This method was set up with 2 parameters, but only called with one argument.
# 5. Why did the interpreter give you this error?
#When Ruby expects 2 arguments but is only given one, it will throw an error (unless we set a default value for one or both parameters, which we have not done).  The number of parameters and arguments must match.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#125
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#"String can't be coerced into FixNum"
# 4. Where is the error in the code?
#We are trying to multiply a number by a String and Ruby is saying "Nope."
# 5. Why did the interpreter give you this error?
#We COULD have multiplied the string by 5 and it would have printed 5 times, but we can't multiply 5 by a string.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#140
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#"/: divided by 0"
# 4. Where is the error in the code?
#You can't divide anything by zero without leaving the time-space continuum.
# 5. Why did the interpreter give you this error?
#Ruby can't divide 20 by zero any more than we can...because we tell Ruby what to do, ultimately!  Until AI takes over, Ruby only knows the math that we know.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#156
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#It says it can't load the "require_relative" file, and gives the file path.
# 4. Where is the error in the code?
#This file doesn't exist, so when Ruby went to look for it, she couldn't find it.
# 5. Why did the interpreter give you this error?
#Ruby can't work with a file that doesn't exist.  We would need to create this file for this command to make sense.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?

# I guess the first one that said the line was 170--but I knew what Ruby was looking for so it didn't take long to figure out.

# How did you figure out what the issue with the error was?

# I have a little experience with Ruby and knew the "unexpected end of input" meant she needed an "end" somewhere.

# Were you able to determine why each error message happened based on the code?

# Yes!  Ruby is wonderfully eloquent with her error messages!

# When you encounter errors in your future code, what process will you follow to help you debug?

# Probably something similar to this--check out the error, look it up if I don't know it, change one thing and re-test.  Definitely better than my original "Freak out and change everything at once" technique, which I abandoned some time ago.