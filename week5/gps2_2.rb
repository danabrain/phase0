# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(list_string)
  list_array = list_string.split(" ")

  list_hash = {}
  list_array.each do |item|
    list_hash[item] = 1
  end
  p list_hash
end


my_list = create_list( "carrots apples cereal pizza")


# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

def add_item(list, name, qty=1)
  list.has_key?(name) ? list[name] += qty : list[name] = qty
  p list
end

add_item(my_list, "cereal", 100)


# Method to remove an item from the list
# input: my_list, item to remove
# steps:
# output:

def remove_item(list, item)
  list.has_key?(item) ? list.delete(item) : (return puts "Sorry!  That item doesn't exist.")
  p list
end

remove_item(my_list, "tacos")

# Method to update the quantity of an item
# input: my_list, the item, new quantity
# steps:
# output: new my_list

def update_qty(list, name, qty)
  list[name] = qty
  p list
end

update_qty(my_list, "apples", 400)

# Method to print a list and make it look pretty
# input: my_list
# steps: iterate over hash, for each pair, puts name : quantity
# output: a pretty list

def print_list(list)
  list.each do |key,value|
    puts "#{key}: #{value}"
  end
end

print_list(my_list)