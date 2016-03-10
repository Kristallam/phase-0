# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) An Array of most frequent numbers or strings
# What are the steps needed to solve the problem?
  # Create an empty HASH
  # Iterate through the array .each loop
  # Input key and value into HASH from the ARRAY
  # Iterate through the HASH
  # Check to see if value is EQUAL to the hash.max


# 1. Initial Solution

=begin
def mode(array)
  hash = Hash.new(0)
  hash_max = Hash.new(0)
  array.each do |num|
    hash[num] += 1
  end

  new_array = []
  hash_max = hash.max_by {|k,v| v}
  hash.each {|k,v| new_array << k}
  p new_array
end
=end

# 3. Refactored Solution

def mode(array)
  hash = Hash.new(0)
  hash_max = Hash.new(0)
  array.each do |num|
    hash[num] += 1
  end

  new_array = []
  hash.each do |k,v|
      if v == hash.values.max
        new_array << k
      end
  end
  p new_array
end


=begin
# 4. Reflection
Which data structure did you and your pair decide to implement and why? My pair and I decided to use Hash, honestly because in the 5.3 it gave us the hint to use Hash and then we also used Array because had to take an array and then return one.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? We were succesfully using pseudocode, I think that helped us a lot because when we were coding and stuck we looked back to our pesudocode. Also a lot of times when we were coding we wanted to try something else but remembered to stay on track with pesudocode.

What issues/successes did you run into when translating your pseudocode to code? The issue we had was figuring out how to write in code the max value. We tried max_by! then realized bang doesn't work with that then we tried it without and got an array so we found that we could use .values.max.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? Yeah we used .values.max and also << to push the number after the key. Even though max_by didn't work trying it allowed us to understand it a bit more.
=end