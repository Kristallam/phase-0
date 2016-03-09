
# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, min size for the array, optional argument
# What is the output?
  # if less than the min it shuld be a new array padded with the pad value up to the     min size
  # If the min size is less than or equal to the length of the array, it should return   the array
# What are the steps needed to solve the problem?


# 1. Initial Solution

#def pad!(array, min_size, value = nil) #destructive
#    new_array = []
#    x = array.length
#    new_value=min_size-x

#if x < min_size
#  new_array.push(array[x])(new_value)
#    end
#  else x >= min_size
#    return array
#    end

# 3. Refactored Solution

def pad!(array, min_size, value = nil)
  if min_size <= array.size
    return array
  else
    x = min_size - array.size
    until x == 0
        array.push(value)
        x -= 1
    end

    return array
 end
end


def pad(array, min_size, value = nil)
new_array = Array.new(array)

  if min_size <= array.size
    return new_array
  else
    x = min_size - array.size
    until x == 0
      new_array.push(value)
      x -= 1
    end
  return array
 end
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

When you refactored, did you find any existing methods in Ruby to clean up your code?

How readable is your solution? Did you and your pair choose descriptive variable names?

What is the difference between destructive and non-destructive methods in your own words?
=end