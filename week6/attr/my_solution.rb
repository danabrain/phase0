#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: A name.
# Output: A salutation that uses that name by initializing a new instance of NameData and integrating it with the greeting instance.
# Steps:
# 1. Create an intialize method in NameData to set @name.
# 2. Create a greet method inside Greetings (which, itself, is inside NameDate) that will initialize an instance of NameData when it is called, and include @name in the return value of greet.


class NameData
  def name_setter
    @name = "Dana"
  end
end


class Greetings
  def initialize
    @name = NameData.new
  end

  def greet
    puts "Hello, #{@name.name_setter}. You're looking swell!"
  end
end

statement = Greetings.new
statement.greet


# Reflection

# Release 1 Reflection:

# -------What are these methods doing?

# The methods are getter and setter methods.  The getter, or reader, methods simply retrieve and output the information stored in instance variables from the initialize method.  The setter, or writer methods, (these have the = in the method name) actually change the value of the instance variable from outside the class.

# -------How are they modifying or returning the value of instance variables?

# The getter/reader methods don't change anything about the instance variables.  They simply return what's already there.  The setter/writer methods are changing the value of an instance variable.  That's what the method_name=(new_value) does---it takes a new value as an argument and set the instance variable inside the setter method equal to that new value.  This can be done from outside the class.  Neat!!

# Release 2 Reflection:

# -------What changed between the last release and this release?

# Now the code uses attr_reader! It allows us to read @age from outside the class, and takes away the need to write out the def what_is_age method that returned @age.

# -------What was replaced?

# The method what_is_age was replaced by the line of code attr_reader :age.  This essentially wrote that method for us.  We also can get the value of @age by simply calling .age on our object, instead of what_is_age.

# -------Is this code simpler than the last?

# Just a little bit--there's obviously much more work to do.  But, the reader method for the @age instance variable certainly was coded more elegantly!

# Release 3 Reflection:

# -------What changed between the last release and this release?

# Yay, now @age has an attribute writer!  This means the setter method change_my_age=(new_age) has been written for us with this one line of code (attr_writer :age).  It also means that when we want to change the value of @age from outside the Class, all we have to do is call .age on our object and set that equal to our desired value (no longer have to call change_my_age and pass in an argument).

# -------What was replaced?

# The change_my_age=(new_age) method was essentially written for us with attr_writer :age.  Also, the .change_my_age(argument) method call was replaced with a simple .age = new_age method call.  Simple!

# -------Is this code simpler than the last?

# Yep!

# Release 6 Reflection:

# -------What is a reader method?

# A reader method (or getter method) accesses information stored in instance variables.

# -------What is a writer method?

# A writer (or setter) method allows one to change the value of an instance variable from outside the class.

# -------What do the attr methods do for you?

# They create the getter and setter methods with a single line of code, and change the method calls from being method-name specific to being attribute specific.

# -------Should you always use an accessor to cover your bases? Why or why not?

# There seem to be good times to use them (e.g. when you know data is going to change, like a customer's age), but other times that you might not wish to have your date readable or re-writable from outside the class for privacy and integrity concerns.  These are awesome tools, but not right for every situation.

# -------What is confusing to you about these methods?

# Nothing!  I love them.