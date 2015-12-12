# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# 1. Make a new Pez Dispenser that starts full with a number of Pez with different flavors. (Say, 10 Pez in 3 flavors: cherry, orange, grape.)
# 2. Make a counting method to quickly determine how many Pez are in the dispenser. (array.length)
# 3. Take one Pez from the dispenser (pop or shift)
# 4. Add one Pez to the dispenser (push or unshift)
# 5. Display Pez in order so we can see upcoming flavors.

# Initial Solution

class PezDispenser

  def initialize(@cherry, @grape, @orange)
    self.full? == true
    @number = 10
    @cherry = cherry
    @grape = grape
    @orange = orange
  end

  def pez_check(dispenser)
    puts "Your dispenser is full." if self.full?
    puts "You have #{@cherry} cherry, #{@grape} grape and #{@orange} orange pez."
  end

end

daffy = PezDispenser.new(3,3,4)
daffy.pez_check



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflectio
