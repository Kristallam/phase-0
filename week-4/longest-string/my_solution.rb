# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

#Pesudocode
#define a method longest_string that will go through a list of strings and return the longest one
#WHILE s is less than the list of words it will print s and change it to a string
# s will increase by 1 everytime
=begin
def longest_string(list_of_words)
  s = 0
  while s < list_of_words.length
    p s.to_s
    s += 1
  end
end
=end

#REFACTOR with Ruby Method
def longest_string(list_of_words)
  list_of_words.max_by(&:length)
end