# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)

  return nil if list_of_words.empty?
  return "" if list_of_words.length == 1 && list_of_words.include?("")
  return list_of_words[0] if list_of_words.length == 1

  test_word = list_of_words.pop
  not_it = []
  solution = []

  list_of_words.each do |word|
    if word.length > test_word.length
      not_it << test_word
      test_word = word
    else
      not_it << word
    end
  end

  solution << test_word
  return solution[0]

  #OR USE sort_by METHOD:

  new_list = list_of_words.sort_by {|x| x.length}
  return new_list[-1]
end

