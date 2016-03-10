=begin
PESUDOCODE
Input: STRING of an array of names that I will be creating with the people that are from my cohort group
Steps:
  - Create an array with a list of people from my cohort
  - Create a method called groups
  - split the input into groups of 5 and have at a group of 3
  - Iterate over the group (array)
  - Group is less than or equal to 5 and greater than or equal to 3
  - Call method and have (group,#), it will give me however many I can in that group
Output:
  - MVP = A list of accoutability groups created from the array
  - Groups of 4 or 5 and at least 3 people from my chort randomized from the list of STRINGS that I put in my array (I am going to group in 5s)
=end

#Initial Solution
#fiery_skippers = ["Aarthi Gurusami", "Abid Ramay", "Adam Zumudzinsk", "Alec Hendrickson", "Alex Wen", "Allison Paul", "Ann Lansfjord", "Ben Sanecki", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Che Sanders", "Chris Henderson", "Dan Park", "Bill Deny", "Denny Jovic", "Elizabeth Alexander", "Ena Bekanovic", "Frank Lam", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Lisa Buch", "Lisa Dannewitz", "Patrick DeWitte", "Robin Soubry", "Shin Wang", "Sibel Ergener", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]

#def members(fiery_skippers)
#  groups = Hash.new(1)
  # interating through everyone
#  fiery_skippers.each do |people|
#    groups[people] = 1
#  end
# p groups
#end

#def groups_of_four(fiery_skippers)
# member = 0
#  # Slicing the members into groups of 4
#  fiery_skippers.each_slice(4).with_index do |x, y|
#  p "Group #{y+1}: #{x.inspect}"
#  end
#end

#After I run the code, I'm not getting anything, going back to see what else I can find

#Refactored Solution
fiery_skippers = ["Aarthi Gurusami", "Abid Ramay", "Adam Zumudzinsk", "Alec Hendrickson", "Alex Wen", "Allison Paul", "Ann Lansfjord", "Ben Sanecki", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Che Sanders", "Chris Henderson", "Dan Park", "Bill Deny", "Denny Jovic", "Elizabeth Alexander", "Ena Bekanovic", "Frank Lam", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Lisa Buch", "Lisa Dannewitz", "Patrick DeWitte", "Robin Soubry", "Shin Wang", "Sibel Ergener", "Ted Bogin", "Traci Fong", "Victoria Solorzano"]


def acct_group(array,limit)
  array.shuffle.each_slice(limit).with_index do |group, index|
    puts "Group #{index+1}: #{group.inspect}"
  end
end

acct_group(fiery_skippers,4)

=begin
REFLECTION
What was the most interesting and most difficult part of this challenge?
  The most diffcult part of this challenge was that my code would't run anything during the initial solution, I had to do a lot of research on methods to be able to refactor to a better way for my code to run. I think I really overthink things when I do these challenges.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
  I do think that I am improving my ability to write pesudocode and breaking things down. It is really help me and making it a lot easier when I actually code. It is still hard because I want to do things that I don't know how to put in code.

Was your approach for automating this task a good solution? What could have made it even better?
  It wasn't in the beginning during the initial solution. I think I did too many things that weren't needed. So I read up more on ruby methods to make it better.

What data structure did you decide to store the accountability groups in and why?
  I used an array to story the accountability groups. I didn't use a Hash because it didn't need a value. So for the Array I just stored them as strings.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  Yeah I used a lot of new ruby methods, honestly some I still just don't know exactly when to use but I read that post about how to know which method to use and I kind of just went with it. I thought of what I wanted to do and then found a method that worked with it.
