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
  An ArgumentError is raised when the arguments are wrong and there isn't a more specific Exception class.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  The ruby method I implmented was rand, which randomizes a number between 1 and the class sides. I tried it with (1..6) but I got a whole bunch of numbers that were more than 6. So with trial and error I ended up using the class to test and it worked.

What is a Ruby class?
  A class lets you group behaviors (methods) into convenient bundles, so that you can quickly create many objects that behave essentially the same way.

Why would you use a Ruby class?
  You want to use a Ruby class because it let's you group methods so you can quickly call upon and it and it will behave the same to many objects.

What is the difference between a local variable and an instance variable?
  Local variable is something you name during that method. But an instance variable can be used throughout the class by calling it with an @ symbol.

Where can an instance variable be used?
  An instance variable can be used anywhere within a class.
=end