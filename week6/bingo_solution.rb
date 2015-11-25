# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   Sample from a letter array [b, i, n, g, o]
#   Generate a random number 1-100 rand(1..100)

# # Check the called column for the number called.
#   Each element of letter array will correspond with column 0-4 on board (use something like each_by_index with a filter for the index number we want)
#   Check that element of each row array to see if it matches (use boolean)

# # If the number is in the column, replace with an 'x'
#   If the number is a match, replace with an x (use replace method)

# # Display a column to the console
#   Create an array of just one column and then print it all on new lines

# # Display the board to the console (prettily)
#   Print each subarray of the board array on its own line.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @column = %w{b i n g o}.sample.upcase
    @number = rand(1..100)

    p "Letter: #{@column}, number: #{@number}"
  end

  def check
    if @column == "B"
      @bingo_board.each do |element|
          element[0] = "X" if element[0] == @number
        end
    elsif @column == "I"
      @bingo_board.each do |element|
          element[1] = "X" if element[1] == @number
        end
    elsif @column == "N"
      @bingo_board.each do |element|
          element[2] = "X" if element[2] == @number
        end
    elsif @column == "G"
      @bingo_board.each do |element|
          element[3] = "X" if element[3] == @number
        end
    elsif @column == "O"
      @bingo_board.each do |element|
         element[4] = "X" if element[4] == @number
        end
    end
  end

  def print_column
    puts "Here is column #{@column}:"
    if @column == "B"
      @bingo_board.each do |element|
          p element[0]
        end
    elsif @column == "I"
      @bingo_board.each do |element|
          p element[1]
        end
    elsif @column == "N"
      @bingo_board.each do |element|
         p element[2]
        end
    elsif @column == "G"
      @bingo_board.each do |element|
         p element[3]
        end
    elsif @column == "O"
       @bingo_board.each do |element|
         p element[4]
        end
    end
  end

  def display_board
    puts "B  I  N  G  O"
    @bingo_board.each do |row|
      puts row.each { |number| number }.join(" ")
    end
  end

  def win_game?

    holding_array = []

        if @column == "B"
          @bingo_board.each do |element|
              holding_array << element[0]
            end
        elsif @column == "I"
          @bingo_board.each do |element|
              holding_array << element[1]
            end
        elsif @column == "N"
          @bingo_board.each do |element|
             holding_array << element[2]
            end
        elsif @column == "G"
          @bingo_board.each do |element|
            holding_array << element[3]
            end
        elsif @column == "O"
           @bingo_board.each do |element|
             holding_array << element[4]
            end
        end

     return holding_array.all? {|element| element == "X"}

  end

  def play_game
    while true
      call()
      check()
      print_column()
      display_board()
      if win_game?()
        puts "YOU WIN!"
        break
      end
    end
  end

end


# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @column = %w{b i n g o}.sample.upcase
    @number = rand(1..100)

    p "Letter: #{@column}, number: #{@number}"
  end

  def check
    @holding_array = [1]
    case @column
    when "B"
      @bingo_board.each do |element|
          element[0] = "X" if element[0] == @number
          p element[0]
          @holding_array << element[0] if element[0] == "X"
        end
      @holding_array

    when "I"
      @bingo_board.each do |element|
          element[1] = "X" if element[1] == @number
          p element[1]
          @holding_array << element[1] if element[1] == "X"
        end
      @holding_array.length

    when "N"
      @bingo_board.each do |element|
          element[2] = "X" if element[2] == @number
          p element[2]
          @holding_array << element[2] if element[2] == "X"
        end
      @holding_array.length

    when "G"
      @bingo_board.each do |element|
          element[3] = "X" if element[3] == @number
          p element[3]
          @holding_array << element[3] if element[3] == "X"
        end
      @holding_array.length

    when "O"
      @bingo_board.each do |element|
         element[4] = "X" if element[4] == @number
         p element[4]
         @holding_array << element[4] if element[4] == "X"
        end
      @holding_array.length
    end

  end

  def display_board
    puts "B  I  N  G  O"
    @bingo_board.each do |row|
      puts row.each { |number| number }.join(" ")
    end
  end

  def play_game
    while true
      call()
      check()
      break if @holding_array.length == 6
    end
    puts "WINNER!"
    display_board()
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play_game

#Reflection

# -------How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

#     I thought pseudocoding this was fairly easy, since the steps were broken down for us.  Walking through the problem step-by-step beforehand made it way less intimidating.

# -------What are the benefits of using a class for this challenge?

#     We can use instance variables that maintain there state among the class methods--so, if I make a "call" method that identifies a column and a number within that column, I can manipulate those values across the class without losing them as I would if I were not working within the class.

# -------How can you access coordinates in a nested array?

#     Name_of_array[index_of_element_you_wish_to_access][index_of_element_you_wish_to_access] etc. etc. etc.

# -------What methods did you use to access and modify the array?

#     I used many each loops, and I reassigned values using their index numbers.

# -------Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

#     I used the .all? to test my win_game?() method!  This walks through the array and looks to see if all the elements equate to "true" when run through a given code block.  I used this Boolean output to determine whether the game was won in my original solution (I couldn't get it to work in the refactored solution due to time constraints).

#     You call .all? on an array and pass an object, and then a code block to test against that object.  If the codeblock returns true for all the objects in the array, the outcome of .all? is true.

# -------How did you determine what should be an instance variable versus a local variable?

#     I used instance variables when I needed to use them in more than one class method.  For example, holding_array is a local variable in my initial solution because it lives in the win_game? method and isn't used anywhere else. However, when I refactored, I made it an instance variable so I could refer to it across several conditions and methods.

# -------What do you feel is most improved in your refactored solution?

#     I'm not sure, honestly, besides clearing up a lot of repetition (and there still is much repetition). I liked the way I solved the puzzle in the initial solution and was bummed I had to change that to get the refactor to work (I couldn't check holding_array.all? in the refactor because I had to initialize it to an empty class and Ruby couldn't call .all? on a nil object.  To get around this, I filled it with a 1 and then used .length to determine whether the game was won, since 5 "X"s plus the one I put in there to keep it from being nil would equal a length of 6, and therefore a win).  It feels hacked together but I appreciated the mental exercise of working through it.