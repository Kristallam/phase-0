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
What was your process for breaking the problem down? What different approaches did you consider?
  My process of breaking this problem down was by figuring out what I had to start with and what my output had to be then I had to think about what I need to do to turn my number into a string then inserting a comma there. I think the hardest thing was putting my words into code. I considered a lot of different approaches.

Was your pseudocode effective in helping you build a successful initial solution?
  My pesudocode this time was not reawlly effective in helping me build my successful initial solution. I think what I struggled with was putting my thoughts into words then my words into code. I realized that I will want to do certain things but wouldn't know how to do it with ruby.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  The ruby method that I used during refactoring .insert. I kept thinking about using join and push during the inital solution but my code would get 5 out of 6 failure and no matter how I changed it, it still wouldn't all work. So I researched other methods that can put the comma in there. It significantly changed it because it looked better and also my code ended up working.

How did you initially iterate through the data structure?
  I initially interated through the data structure by making an empty array and then doing .each to it. My thought process was go through the number and if it was divisable by 3 then add the comma to it. When it didn't work I kind of hit a wall and had to leave it and come back to it a couple days later.

Do you feel your refactored solution is more readable than your initial solution? Why?\
  I do feel that my refactored solution is more readable but I feel like I was getting close with my initial solution. I guess coming back to it with a fresh mind really did help.

=end