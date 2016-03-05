# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#Pesudocode
#define a method that has three arguments
# 1. An array of integers
# 2. An integer lower bound
# 3. An integer upper bound
# This will return the numbers that are between the lower and upper bound and if the array is empty it will return 0

=begin
def count_between(list_of_integers, lower_bound, upper_bound)
  x = 2
  if x >= lower_bound && x <= upper_bound
    p x
  else
    p 0
  end
end
=end

#REFACTOR USING RUBY METHOD
def count_between(list_of_integers, lower_bound, upper_bound)
 list_of_integers.count {|x| x>= lower_bound && x <= upper_bound}
end