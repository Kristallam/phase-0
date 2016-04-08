# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#Input: Sentence in String format
#Output: Sentence with each word reversed in String format
#Steps:
  # Create an empty array that takes a STRING
  # Break the string up by words and PUSH to the array
  # Go through each word inside the array and reverse it
  # JOIN the words back together and print the new string


# Initial Solution
def reverse_words(sentence)
  new_sentence = []
  reversed_sentence = []
  new_sentence = sentence.split(" ")
    new_sentence.each do |word|
      new_word = word.reverse
      reversed_sentence << new_word
    end
  reversed_sentence.join(" ")
end

# Refactored Solution

def reverse_words(sentence)
  reversed_sentence = []
  split_sentence = sentence.split(" ")
    split_sentence.each do |word|
      new_word = word.reverse
      reversed_sentence << new_word
    end
  reversed_sentence.join(" ")
end

=begin
Reflection
What concepts did you review in this challenge?
  The concepts that we reviewed in this challenge was taking a string and creating an array to split it up then joining it back after. This was a good challenge for me because this is something that is still pretty confusing for me.
What is still confusing to you about Ruby?
  I think just getting more comfortable with this and getting use to .split and .join. In this challenge we forgot that .split automatically creates an array.
What are you going to study to get more prepared for Phase 1?
  I am going to study all the ruby concepts a little bit more and get more familiar with it.
=end