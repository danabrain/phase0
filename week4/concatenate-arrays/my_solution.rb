# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  return [] if array_1.empty? && array_2.empty?

  concat_array = []

  array_1.each do |thing|
    concat_array << thing
  end

  array_2.each do |thing|
    concat_array << thing
  end

  return concat_array

  #OR JUST ADD THEM TOGETHER:
  # new_array = array_1 + array_2
  # return new_array
end