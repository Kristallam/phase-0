# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


#PESUDDOCODE
  #Input: I want the array I_WANT_PETS and also n which is a number
  #Steps:
    #I used .map! then went through all the numbers and if it was an integer then added 1 to it
    # "!" will modify the array
  #Output: The array but all the integers within the array will have 1 added to it

# Person 2

def my_array_modification_method!(i_want_pets, n)
  i_want_pets.map! {|n| n.is_a?(Integer) ? n + 1 : n}
end

# Identify and describe the Ruby method(s) you implemented.
# I used for .map! - invokes the given block once for each element of self, replacing the element with the value returned by the block.
# Also I said if n is an interger then n + 1

def my_hash_modification_method!(my_family_pets_ages, n)
  my_family_pets_ages.each {|key, value| my_family_pets_ages[key] = value + n}
end
# Identify and describe the Ruby method(s) you implemented.
# it goes through each key and value pair
# then the key will be set to have a new value which is value + n
# in this case n = 2




# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Look under the code for instructions on what I did
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# This one was hard for me because I really had no idea on how to do it. So I did a lot of researching and was able to find out how to add the numbers. It was easier for the Array and much harder to do for the Hash
#
#
