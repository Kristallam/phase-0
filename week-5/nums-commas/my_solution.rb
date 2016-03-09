# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive Integer
# What is the output? It will return a String of comma seperated integers
# What are the steps needed to solve the problem?
  # Need to go through the integer and seperate it into commas
  # Change it to a string
  # Return the out as a string with commas


# 1. Initial Solution
def separate_comma(number)
  if number > 3
    return number.to_s
  else
      new_array = []
      new_num = number.to_s.reverse.split("")
      new_num.each do |i|
        if new_array.length % 3 == 0
          new_array.push("," + i.to_s)
        end
      end
  end
  new_array.join.reverse.chop!
end
=begin
def separate_comma(number)
  num = number.to_s.split)
    # number be turned into string and the split it up
  new_num = num.size/3
    # the num variable be divded by 3 because thats where the commas will go
  if num.size < 4
    # if the number is less than 4 it will ...
    p number.to_string
  elsif num.size%3 == 0
    new_num.times do |i|
  end
end
  p number
end



=begin
# 2. Refactored Solution
def separate_comma(number)
  number.to_s.chars.to_a.reverse.each_slice(3).join(",").reverse
end

#The code won't run saying undefined method join, my thought process of what each meant is below. I told it to with the comma.
#.to_s makes it a string
#.chars returns an array of characters in str, ruby doc(rubyist pg.308 )
#.to_a converts the object to an array
#.reverse reserve self in place
#.each_slice(3) walk through a number of certain elements at a time, for this one 3
#joined it with the comma


# 3. Reflection
=end