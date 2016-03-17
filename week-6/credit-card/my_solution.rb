# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Alex Wen].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true or false, if it's a valid credit card
# Steps:
# determine if there's 16 digits from input
# break numbers up into a container
# iterate the values and double every other one
# break apart double digit values
# add all values together
# if the added values can be divided by 10 with no remainder, then true
# otherwise, false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  attr_accessor :number

  def initialize(number)
    #@num = credit card number
    @num = number.to_s.split("")
    if @num.length != 16 then raise ArgumentError.new("This is not a 16 digit number!")
    end
  end

  def card_num
    counter = 1

    @num.each do |x|
      if counter == 1
        x = x*2
        counter = 0
      else
        counter = 1
      end
    end
  end

  def num_split
    @num.map! do |x|
      if x > 9
      x.to_s.split("")
      end
    end
  end

  def adder
    @total = 0
    @num.each do |y|
      @total += y
    end
  end

  def check_card
    if @total % 10 == 0
      return true
    else
      return false
    end
  end
end
=end

# Refactored Solution

class CreditCard
  attr_accessor :number

  def initialize(card_number)
    #@num = credit card number
    @number = card_number.to_s.split("")
    if @number.length != 16 then raise ArgumentError.new("This is not a 16 digit number!")
    end
  end

  def check_card
    @number.map! do |x|
      if @number.index(x) % 2 == 0
        x.to_i * 2
      else
        x.to_i
      end
    end

    @number.map! do |y|
      if y > 9
        y.to_s.split("").map(&:to_i)
      else
        y
      end

    end
    p @number.flatten!


    if @number.inject(0,:+) % 10 == 0
      return true
    else
      return false
    end
  end
end

=begin
Reflection
What was the most difficult part of this challenge for you and your pair?
 I think the most difficult part was figuring the last part of the error. We got the beginning pretty fast and then we were stuck for a while until we figured it out.

What new methods did you find to help you when you refactored?
  During our refactoring we used .inject and (&:to_i) which turned the whole array into an integer or else it couldn't have passed the other part.

What concepts or learnings were you able to solidify in this challenge?
  I think it solified using attr_accesor more because at first we kept defining different methods and then we realized that with the attr_accessor you can just use one method

=end