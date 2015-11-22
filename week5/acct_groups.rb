names_array = [
"Jack Abernethy",
"Mohammad Amin",
"Zollie Barnes",
"Reuben Brandt",
"Dana Breen",
"Breton Burnett",
"Saundra Vanessa Castaneda",
"Luis De Castro",
"Nicolette Chambers",
"Kerry Choy",
"Nick Davies",
"Katherine DiAngelo",
"Adrian Diaz",
"David Diaz",
"Bob Dorff",
"Michael Du",
"Paul Dynowski",
"Jenna Espezua",
"Sean Fleming",
"Marcel Haesok",
"Albert Hahn",
"Arthur Head",
"Jonathan Huang",
"Thomas Huang",
"Alex Jamar",
"Kevin Jones",
"Steven Jones",
"Cole Kent",
"Caroline Kenworthy",
"Calvin Lang",
"Yi Lu",
"David Ma",
"Sean Massih",
"Tom McHenry",
"Alex Mitzman",
"Lydia Nash",
"Brenda Nguyen",
"Matthew Oppenheimer",
"Mason Pierce",
"Joe Plonsker",
"Mira Scarvalone",
"Joseph Scott",
"Chris Shahin",
"Benjamin Shpringer",
"Lindsey Stevenson",
"Phil Thomas",
"Gary Tso",
"Ting Wang",
"Clinton Weber",
"Monique Williamson",
"Regina Wong",
"Hanah Yendler",
"extra name",
"name, name",
]

# Take the array and see if it is divisible by 4, if so, use each_slice and make subarrays.  Even if it's not we can then check the size of the last slice (which is likely to be less than 4) and concatenate with the 2nd to last slice.

# Or, take a random number and add 3 to it, and take that range out of the array until all the names have been removed

# MVP:

# groups_array = []
# names_array.each_slice(4) {|x| groups_array << x}

#   if groups_array[-1].length < 3
#     index = 0
#       while index < groups_array[-1].length + 1
#       move_student = groups_array[-1].pop
#       groups_array[index] << move_student
#       index += 1
#       end
#     groups_array.delete_if {|x| x.empty?}
#   end

# p groups_array

#I'd like to somehow take a random sample of the array, take that sample out as a group, and sample the array again until there's nothing left.



def make_groups(names)
  groups_array = []
  while names.length > 0
    group = names.sample(4)
    groups_array << group
    names -= group
  end

  return groups_array
end

def check_groups(groups)
  if groups[-1].length < 3
    index = 0
    while index < groups[-1].length + 1
        move_student = groups[-1].pop
        groups[index] << move_student
        index += 1
        end
    groups.delete_if {|x| x.empty?}

    return groups
  end
end

def store_groups(key,value)
  past_groups = {}
  past_groups[key] = value
  return "__________________________HERE IS GROUP #{key}:__________________________________ #{past_groups}"
end

def make_and_store_groups(names, num)
  stored_groups = []
  for n in (1..num)
    first_list = make_groups(names)
    final_list = check_groups(first_list)
    stored_groups << store_groups(n, final_list)
  end

  p stored_groups
end

make_and_store_groups(names_array, 3)

# What was the most interesting and most difficult part of this challenge?

# The most interesting part was figuring out how to work the logic!  I like thinking about code as puzzles and finding ways to solve them.  It's not always easy or fast, but I find myself pretty absorbed by it.  The most difficult thing was figuring out how to string the method calls together so I could create, check, and store my groups in one method call.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I'm not sure, because I don't think my psudocode is grammatically correct yet--I want to spend more time with resources on how to do it well.  It is, however, very helpful!

# Was your approach for automating this task a good solution? What could have made it even better?

# I think my approach was okay, but it seems fragile.  I'm sure there are ways to make a more robust series of methods that would work together elegantly.

# What data structure did you decide to store the accountability groups in and why?

# A hash, so I could have a key (the number of the group) and a value (the group array).

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# Not really, becuase I used most of my initial solution in my final solution!  I did get to play with .sample though, which was fun!
