# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#This one I just keep getting an infinte loop, I timeboxed here. My thought process was that i=0 and 1 greater than the list of number print i
#def largest_integer(list_of_nums)
#  i = 0
#  while i > list_of_nums[i]
#    p i
#  end
#  i -= 1
#end
#Refactor with Ruby method
def largest_integer(list_of_nums)
  list_of_nums.max
end