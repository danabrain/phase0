# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 3
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data [:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

#Initial Solution:

number_array = [5, [10, 15], [20,25,30], 35]

new_array = []

number_array.each do |element|
  if element.kind_of?(Array)
    new_array << element.map! {|inner| inner += 5}
  else
    new_array << element += 5
  end
end

p new_array

#Refactored Solution:

p number_array.map! {|element|

  element.kind_of?(Array) ? element.map! {|inner| inner += 5} : element += 5}

# Bonus:

#Initial Solution:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

opt_array = []
temp1_array = []
temp2_array = []

startup_names.each do |element|
  if element.kind_of?(Array)
    temp1_array = element.map! {|inner_element|
      if inner_element.kind_of?(String)
        inner_element.concat("ly")
      else inner_element.kind_of?(Array)
        temp2_array = inner_element.map! {|inner_inner|
          inner_inner.concat("ly")}
      end}
    opt_array << temp1_array
  else
    opt_array << element.concat("ly")
  end
end

p opt_array

# Bonus: Refactored Solution (which is FAR less readable, but was fun to try.  However, I wouldn't use this one because it's almost incomprehensible.)

p startup_names.map! { |element|
  element.kind_of?(Array) ? element.map! {|inner_element|
    inner_element.kind_of?(Array) ? inner_element.map! {|inner_inner|  inner_inner.concat("ly")} : inner_element.concat("ly")} : element.concat("ly")}

#Reflection:

-------What are some general rules you can apply to nested arrays?

String index numbers side by side, after the name of the container array, that correspond to the elements (or sub-arrays) you wish to access.

-------What are some ways you can iterate over nested arrays?

Use an .each do loop with some sub-loops to get into the nested arrays, or use a Boolean method (like kind_of?) to identify if elements themselves are arrays and use another each loop.  We used .map! so we could capture the outputs of our loop codeblocks.  We also relied on ternary operators to make the logic a bit more robust in the case of some number n nested arrays.

-------Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used concat, kind_of was new.  I also liked using the ternary operators.  We used map! because it changed the array in place, whereas each do just returned the original array.