# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create a method called roll
  # Create an array with the STRINGS 'B', 'I', 'N', 'G', 'O'
  # Var ran_letter will pick a random letter from the array
  # Var ran_num will pick a ranom number between (1-100)
  # Var win_num_letter will return the random letter and random number

# Check the called column for the number called.
  # Create a var letter and set it to win_num_letter[0] <- default value
  # B = index 0, I = index 1, N = index 2, G = index 3, 0 = index 4


# If the number is in the column, replace with an 'x'
  # Iterate through the row instance var @bingo_board.each and instance var @win_num_letter  == row[column]
  # Then set that EQUAL to 'X'

# Display a column to the console
  # Iterate through @bingo_board

# Display the board to the console (prettily)
  # Create a METHOD called display, where it will iterate through the bingo board's row
  # return the message 'YOU ARE A WINNER! BINGO!'

# Initial Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def roll
    #Created an array called letters that hold the words BINGO
    letters = ['B', 'I', 'N', 'G', 'O']
    #I am looking for a random letter using sample then making sure it is capitalized
    @ran_letter = letters.sample.upcase
    #Looking for a random number between 1 to 100
    @ran_num = rand(1..100)
    #The instance var @win_num_letter will display a message with the random letter and random number
    @win_num_letter = "The number is #{ran_letter}#{ran_num}"
  end


  def check_board
    roll

    if @ran_letter == 'B'
      column = 0
    elsif @ran_letter == 'I'
      column = 1
    elsif @ran_letter == 'N'
      column = 2
    elsif @ran_letter == 'G'
      column = 3
    else @ran_letter == 'O'
      column = 4
    end

    @bingo_board.each do |row|
      letters << row[column]
      p 'X'
    end
  end

  def display_board
    if letters.include?(@win_num_letter)
      puts 'BINGO!!! WINNER!!'
    end
  end
end
=end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def roll
    #Created an array called letters that hold the words BINGO
    letters = ['B', 'I', 'N', 'G', 'O']
    #I am looking for a random letter using sample then making sure it is capitalized
    @ran_letter = letters.sample.upcase
    #Looking for a random number between 1 to 100
    @ran_num = rand(1..100)
    #The instance var @win_num_letter will display a message with the random letter and random number
  end


  def check_board
    #I created an empty array, i for index
    i = []

    #Created an If statement to run through the random letters in the columns associated to the index
    if @ran_letter == 'B'
      i = 0
    elsif @ran_letter == 'I'
      i = 1
    elsif @ran_letter == 'N'
      i = 2
    elsif @ran_letter == 'G'
      i = 3
    else @ran_letter == 'O'
      i = 4
    end

    #Iterate through the bingo board and then mark X if the random number is EQUAL to the board integer
    @bingo_board.each do |board|
      board[i] = 'X' if @ran_num == board[i]
    end
  end

  def display_board
    #interate through the board to see if the board includes the random number
    @bingo_board.map! do |board|
      if board.include?(@ran_num)
      #if the x is equal to the random number then put X if not then put the board
        board.map! do |x|
          x == @ran_num ? 'X' : x
        end
      else
        board
      end

      #iterate through the board and puts winner then the board then a space below it
      @bingo_board.each do |board|
        puts 'Winner!!!!'
        puts board.inspect
        puts ""
      end
    end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.display_board
end
#Calling the board

=begin
REFLECTION
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I thought that pesudocoding this challenge was really hard. I still haven't mastered psuedocoding at all. It's really hard for me to foresee what I want to do with my code, I think that just takes practice. I think pesudocoding is something that I am struggling with which ties into breaking the code down. I know that this will come with practice and I've been trying to do it as broken down and detailed as possible but I for sure need more work on it.
What are the benefits of using a class for this challenge?
  The benefit for using class for this challenge was calling all my instance variable in the beginning so I could keep using it. It was easy to reuse the instance variables during different methods. I really like that more than having to identify a new variable every time.

How can you access coordinates in a nested array?
  To access coordinates in an nested array you have to call it by it's index. What that means is that if it's within that array then you have to count the index starting from 0 and call it by index.

What methods did you use to access and modify the array?
  I set an empty array and then I used the random letter and choose the index to access the array. I interated through the bingo board to see if the random number was included. If it was then I went ahead and set it equal to X.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I used .inspect for the bingo board at the end. I had some issues with my code and it wouldn't display the bingo board for the longest time so I had to try out different code. Inspect is suppose to return a human readable representation of the object.

How did you determine what should be an instance variable versus a local variable?
  I determined what was going to be an instance variable by seeing if I was going to have to recall it later on. I set the random letter and random number as instance variables because I knew that was going to be used throughout the board.

What do you feel is most improved in your refactored solution?
  Well, the most imporved part was that I got some of my board to be displayed. I think I get tunnel vision when I work on challenges and when I'm set on doing something its really hard for me to think another way completely. I've come to realize that a lot during phase 0 and it's something I really need to work on.
=end