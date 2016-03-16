# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: random number strings
# Steps:
  # def initalize with argument label
  # set @labels = labels
  # if labels is empty then raise Arugment Error
  # define sides, labels.length to find the length of the label
  # Use .sample to choose a random element to test


# Initial Solution

=begin
class Die
  def initialize(labels)
    @labels = labels
    if @labels == 0
      then raise ArugmentError.new("This is empty!")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels.empty?
      raise ArugmentError.new("This is empty!")
    end
end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

=begin
Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  This one I had to implement an method .empty? to see if the to see whether or not the label was empty, if it was then I would have to raise the arugment error. I didn't have to change too much logic in this one.

What does this exercise teach you about making code that is easily changeable or modifiable?
  This exercise taught me that you can easily change code by chaning the different ruby methods that you use to call. Meaning I will change what you are looking for fairly easily

What new methods did you learn when working on this challenge, if any?
  I learned about .sample which take a sample element and tries the code out. This was good to use when defining roll.

What concepts about classes were you able to solidify in this challenge?
  I think it helped me solidfy class more but I think that I still need more work so I can get a better understanding for it.
=end