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
#def my_array_modification_method!(i_want_pets, n)
#  i_want_pets.map! {|n| n.is_a?(Integer) ? n + 1 : n}
#end

def my_hash_modification_method!(my_family_pets_ages, n)
  my_family_pets_ages.map {|k,v| [k, v + 2]}.to_h
end


# Identify and describe the Ruby method(s) you implemented.
#
#
#




# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
