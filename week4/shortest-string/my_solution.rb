# Shortest String

# I worked on this challenge [by myself ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)

  return nil if list_of_words.length == 0
  return " " if list_of_words.length == 1 && list_of_words[0] == " "
  return list_of_words[0] if list_of_words.length == 1

  test_word = list_of_words.pop
  not_it = []
  solution = []
  list_of_words.each do |word|
    if word.length < test_word.length
      not_it << test_word
      test_word = word
    else
      not_it << word
    end
  end

  solution.push test_word
  return solution[0]

  #------SOLUTION WITH sort_by METHOD:

  # new_list = list_of_words.sort_by {|x| x.length}
  # return new_list[0]

end

