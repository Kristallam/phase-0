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

=begin
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
=end

# 2. Refactored Solution
# I did my intial solution on Monday, and honestly I was stuck for hours. I think the problem made me over think and I tried to use all these crazy methods I didn't really undstand. So I went back to this assignment on Thursday and tried something more simple

def separate_comma(number)
  #my output needs to be a string, so I am taking the arugment number and making sure that it turns into a string
  string = number.to_s
  #var n is set string length -3
  n = string.length - 3
  #I decided to do a while loop and use the ruby method .insert
  while n > 0
    string.insert(n , ",")
      n -= 3
    end
  p string
end

=begin
# 3. Reflection
=end