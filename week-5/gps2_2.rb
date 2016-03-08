# Method to create a list
# input:  string - beer, soda, water, vodka, wine
# steps:
  # create a list using a hash
  # qty: beer - 1, soda - 1, water - 1, vodka - 1, wine - 1
  # print the list
# output:hash

def new_list(items)
  list = Hash.new(1)
  items.split.each do |drink|
    list[drink] = 1
  end
  return list
end

list = new_list("beer soda water vodka wine")

# Method to add an item to a list
# input: adding new items (drink, qty) -> (key, value)
# steps:
    # adding the drink and qty to the list
# output: new list will have added drink and qty

def add_item(original_list, new_drink, qty)
  original_list[new_drink] = qty
end

add_item(list, "Orange Juice", 1)
add_item(list, "Apple Juice", 1)
#p list

# Method to remove an item from the list
# input:the item that we want to remove  and where to remove from.
# steps: remove the item from the list
# output:updated list without the removed item

def remove_item(og_list, drink)
  og_list.delete(drink)
end

remove_item(list,"water")

#p list

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input: the list itself
# steps:
  # go through the list and print each item on its own line
# output: Pretty list with drink and qty on each line by themselves

def pretty_list(og_list)
  og_list.each { |drink, qty| puts "#{drink}, #{qty}"}
end

pretty_list(list)

=begin
REFLECTION
What did you learn about pseudocode from working on this challenge?
  I learned how to use it more effectively and put in things that will help me more when I start to really code.

What are the tradeoffs of using Arrays and Hashes for this challenge?
  When we were using an array we weren't able to assign values to the key. So then what we had to do was convert it to a Hash so we could add value.

What does a method return?
  A method returns whatever we define it. So when we can the method it will run the code that we had within the method.

What kind of things can you pass into methods as arguments?
  You can pass any objects through a method as arugments.

How can you pass information between methods?
  To pass information between methods you have to pass it in the argument within each method.

What concepts were solidified in this challenge, and what concepts are still confusing?
  A lot were solidified, like creating a hash and passing it through methods to reuse it. I think what I still need a little more help on converting an array to a hash.

=end