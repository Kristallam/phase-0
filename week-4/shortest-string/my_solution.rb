# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
#Pesudocode
#define a method shortest_string that will go through a list of strings and return the shortest one
#WHILE s is less than the list of words it will print s and change it to a string
# s will increase by 1 everytime
=begin
def shortest_string(list_of_words)
  s = 0
  while s < list_of_words.length
    p s.to_s
    s += 1
  end
end
=end
#Refactor using Ruby Method
def shortest_string(list_of_words)
  list_of_words.min_by(&:length)
end