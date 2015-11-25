#Release 0:

class Profile

  #Initialize a new profile with name, age, and occupation...but is hard-coded with a single instance.

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  #Displays the attributes listed in the initialize method, but inefficiently.
  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  #Returns age--a reader (getter) method.
  def what_is_age
    @age
  end

 # the change_my_age= syntax might be confusing to see, it just allows us to set the value of the @age variable using = format instead of the standard argument format. Look at line 71 to see what I mean. The equals sign is just a part of the method name string, nothing special going on here.

 #This is a setter (writer) method to change someone's age--maybe after a birthday.
  def change_my_age=(new_age)
    @age = new_age
  end

  #A getter method to display name.
  def what_is_name
    @name
  end

  #A setter method to change name (maybe after marriage, for example)
  def change_my_name=(new_name)
    @name = new_name
  end

  #A getter method to read occupation.
  def what_is_occupation
    @occupation
  end

  #A setter method to change occupation.
  def change_my_occupation=(new_occupation)
    @occupation = new_occupation
  end


end

#create a new instance of Profile
instance_of_profile = Profile.new

# I have to use p here because what_is_age only returns the value of @number, it does not print anything to the console. The p modifier prints to the console whatever value is returned. Nifty!
puts "--- printing age -----"
sleep 0.8 # sleep so the program takes a pause instead of just running through
p instance_of_profile.what_is_age # here we expect age to be 27

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.what_is_name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.what_is_occupation

puts "--- changing profile information ----"
10.times do # because we fancy
  print "."
  sleep 0.1
end

instance_of_profile.change_my_age = 28 # happy birthday! you aged one year
instance_of_profile.change_my_name = "Taylor"
instance_of_profile.change_my_occupation = "Rare Coins Trader"

puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info  #Let's see the final product now. We changed all of the values using setters, so everything is different than before.