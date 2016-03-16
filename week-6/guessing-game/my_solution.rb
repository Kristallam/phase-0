# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Takes a random integer
# Output: symbols, :high, :low, or :correct
# Steps:
  # def an instance var @answer
  # def an instance var @guess
    # if guess is greater than answer then it will return the symbol high
    # if guess is less than answer then it will return the symbol low
    # if guess is equal to answer then it will return the symbol correct
  # defined solved?
    # if guess is equal to symbol correc then return true, other than that return false


# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else @guess == @answer
      return :correct
    end
  end

  def solved(solved)
    if @guess == :correct
      return true
    else
      return false
    end
  end
end
=end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else @guess == @answer
      return :correct
    end
  end

  def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end
end

=begin
# Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Instance variables and methods represents characteristics that occur often for those variables and can be reused in the class.

When should you use instance variables? What do they do for you?
  You should use instance vraibles in a class and what they can do is reuse them within the whole class with different methods.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  We used flow control in the if statement testing whether the guess was :high, :low, or :correct. I think im starting to get the hang of flow control so I didn't struggle to much with it during this challenge.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Symbols are good to use during method arugments. Symbolds are also unique identifiers. Symbols will never have their values changed. The benefit of using symbols is that it is immutable it allows ruby use the same object every time you reference the symbol, this saves memory.

=end