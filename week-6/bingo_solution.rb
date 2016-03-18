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

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def roll
    #Created an array called letters that hold the words BINGO
    letters = ['B', 'I', 'N', 'G', 'O']
    #I am looking for a random letter using sample then making sure it is capitalized
    ran_letter = letters.sample.upcase
    #Looking for a random number between 1 to 100
    ran_num = ran(1..100)
    #The instance var @win_num_letter will display a message with the random letter and random number
    @win_num_letter = "The number is #{ran_letter}#{ran_num}"
  end


  def check_board
    letter = @ran_letter[0].upcase
    number = @ran_num[1..100].to_i

    if letter == 'B'
      column = 0
    elsif letter == 'I'
      column = 1
    elsif letter == 'N'
      column = 2
    elsif letter == 'G'
      column = 3
    else letter == 'O'
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

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
