# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# For this, I was thinking i=0 and while it goes through the list of numbers it will print i which is less than list of numbers. Then i += 1 until it ends. It didn't run, I timeboxed and moved on
#def smallest_integer(list_of_nums)
#  i = 0
#  while i < list_of_nums[i]
#    p i
#  i += 1
#  end
#end
# REFACTOR using ruby method
# .MIN gives you the smallest number in the parameter
def smallest_integer(list_of_nums)
   p list_of_nums.min
end