# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#input: Take an array of integers
#output: An array of integers but subitutes multiples of 3 with string Fizz, multiples of 5 with string "Buzz" and multiples of 15 with string "FizzBuzz"
#steps
  # Make an empty array
  # Iterate through the array
  # IF i % 15 is EQUAL to 0 then PUTS "FizzBuzz"
  # ELSIF i % 5 EQUAL to 0 then PUTS "Buzz"
  # ELSIF i % 3 EQUAL to 0 then PUTS "Fizz"
  # ELSE puts i

# Initial Solution

# def super_fizzbuzz(array)
#   new_array = []
#   array.each do |i|
#     if i % 15 == 0
#       new_array << "FizzBuzz"
#     elsif i % 3 == 0
#       new_array << "Fizz"
#     elsif i % 5 == 0
#       new_array << "Buzz"
#     else
#       new_array << i
#     end
#   end

# return new_array
# end


# Refactored Solution

def super_fizzbuzz(array)
  new_array = []
  array.each do |i|
    if i % 15 == 0
      new_array << "FizzBuzz"
    elsif i % 3 == 0
      new_array << "Fizz"
    elsif i % 5 == 0
      new_array << "Buzz"
    else
      new_array << i
    end
  end

return new_array
end

=begin
Reflection
What concepts did you review or learn in this challenge?
  The concept I reviewed in this challenge was creating an empty array and iterating through an argument which was an array and pushing data to the new empty array.
What is still confusing to you about Ruby?
  The confusing part I had was I kept trying to do "puts new_array" and I kept getting nil. I kept forgetting to use p or return.
What are you going to study to get more prepared for Phase 1?
  I will probably just go over all Ruby again and then also make sure to understand all the basics before getting more indept with ruby
=end