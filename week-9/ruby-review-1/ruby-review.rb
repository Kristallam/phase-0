# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: Alex Wen ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Create a container, populate container with different flavor Pez
# Count the container
# Subtract one Pez from the container
# Add one Pez from the container
# Print the container

# Initial Solution

class PezDispenser
  attr_accessor :flavors
# Create a container using , populate container with different flavor Pez

def initialize(flavors)
  @flavors = flavors
end

# Count the container

def pez_count
  @flavors.count
end

# Subtract one Pez from the container

def get_pez
  @flavors.slice!(0)
end

# Add one Pez from the container

def add_pez(flavor)
  @flavors.insert(0, flavor)
end

# Print the container

def see_all_pez
  return @flavors
end

end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE



flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
