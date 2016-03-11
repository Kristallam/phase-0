# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: Class of numbers including 1,2,3,4,5,6
# Output: random number from 1 to 6. If it is less than 1 it will give you an argument error
# Steps:
  # initalize(sides) give it save the information by means of instance variable @sides
  # if sides < 1 raise arugement error
  # call the instance variable sides
  # roll a random number of sides between 1 to 6


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    @sides = sides
    #if sides is less than 1 it will raise the arugment error
    if @sides < 1
      raise ArgumentError
    end
  end

  def sides
    @sides
  end

  def roll
    # got and error saying that private method .rand
    @sides.rand(1..6)
  end
end
=end

# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

=begin
# 4. Reflection
What is an ArgumentError and why would you use one?
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
What is a Ruby class?
Why would you use a Ruby class?
What is the difference between a local variable and an instance variable?
Where can an instance variable be used?
=end