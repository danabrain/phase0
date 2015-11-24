# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer, which is a guess.
# Output: Whether the guess is >, < or == the number we are trying to guess.
# Steps:
  # 1.  Create an answer, an integer we are trying to guess.
  #   a.  This will be random (rand) and not printed to the console.
  #   b.  This answer is part of the initialization of a new game--it happens every time we start a new GuessingGame.
  # 2. Create a method that accepts a guess and gives low/high/correct feedback by comparing the guess to the answer.
    # a.  This needs to loop until the guess matches the answer.
  #   b.  The user is prompted to guess until they get it.
  # 3.  Create a method called solved that will compare the guess to the answer and output true or false
  # 4. (BONUS) Create a "give_up" method that will exit the loop.


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @guess = number

      if @guess == @answer
        :correct
      elsif @guess > @answer
        :high
      else
        :low
      end
  end

  def solved?
    @answer == @guess ? true : false
  end

end

game = GuessingGame.new(14)

p game.guess(14)
p game.guess(20)
p game.solved?


# Refactored Solution
#Since the code above is already pretty spare, I decided to make the game more user-friendly in place of a refactor.  I also wanted to build in logic that would allow the computer to choose a number without the user entering the answer as an argument, and I wanted to keep the user from guessing outlandish numbers (since the program will only choose a number from 1-100).  Because of the loop, the refactor does not pass the tests.  I'm not actually sure why!  I'd be curious to hear if anyone reviewing this has any insight.

class GuessingGame
  def initialize
    @answer = rand(1..100)
    puts "Let's play a guessing game! I'm thinking of a number between 1-100."
  end

  def play_game
    puts "Make a guess between 1-100:"
    @guess = gets.chomp.to_i

    while true
      if @guess > 100 or @guess < 1
        puts "Please enter an integer between 1-100."
        guess = gets.chomp
        @guess = guess.to_i
      elsif @guess == @answer
        puts "That is #{:correct}!  Nice job!"
        break
      elsif @guess > @answer
        puts "That is #{:high}. Guess again please."
        @guess = gets.chomp.to_i
      else
        puts "That is #{:low}. Guess again please."
        @guess = gets.chomp.to_i
      end

    end

  end

  def solved?
    @answer == @guess ? true : false
  end

end

new_game = GuessingGame.new
p new_game.play_game
p new_game.solved?

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  # Instance variables represent characteristics of objects that stay true (for the most part).  For example, if I were instantiated as a female with brown hair, this should be true whether I'm walking, eating, or sleeping (activities which correspond to methods).  (Naturally I can dye my hair, and maybe that's more advanced Ruby!)  Methods give objects velocity--it puts them into action.  It would be pretty boring to make a person class that doesn't do anything but list the characteristics of that person.  We want the person objects to be able to interact with the user, the computer, or each other in some way.  Methods make this possible.

# When should you use instance variables? What do they do for you?

  # Instance variables are great for use inside a class.  Each time an instance of the class is created, its instance variable (@hair_color, @favorite_food) exist outside the initialize method and can be used in other class methods. They create a stable object that maintains its characteristics across methods so we can manipulate it in reference to these variables.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  # Flow control directs Ruby to do one thing if a condition is met, and another when it is not.  For my initial solution, control flow was easy.  The second one was hard because I had an if/else clause inside a while loop inside a method!  It took some tinkering and testing to get the outcomes I expected, and there was complexity I wished to add that I wasn't able to figure out in a reasonable amount of time.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  # Symbols take up less memory (which doesn't mean much for a program this short), they are also immutable--once a symbol is called into being, that symbol remains as is.  If you call something like .upcase on it, that method will change the symbol in place (like a !, or destructive method).  Symbols seem like a good fit for this problem because when returning "High" many times, we don't need to make 5 new String objects that all say "High".  Instead we could make one Symbol object :high and return that each time instead.  The output looks the same but what's happening under the hood is more efficient.
