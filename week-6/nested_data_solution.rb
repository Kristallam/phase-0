# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [
  [1,2],
  ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |item|
  if item.is_a?(Array)
    item.map! {|inner| p inner + 5}
  else
    p item + 5
  end
end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |item|
  if item.is_a?(Array)
    item.map! do |inner|
      if inner.is_a?(Array)
        inner.map!{ |super_inner| p super_inner << "ly" }
      else
        p inner << "ly"
      end
    end
  else
    p item + "ly"
  end
end

=begin
REFLECTION
What are some general rules you can apply to nested arrays?
  Some general rules you can applay to nested array is to make sure you count the index and then start over if the array is within an array.

What are some ways you can iterate over nested arrays?
  Some ways to iterate over a nested array is by doing .is_a? and then doing .map! then after you go to the inner array and do it again. So you have to iterate from outter to inner.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  We used is_a? to iterate over the array. I thought this was a pretty good method. We did the same method for the bonus challenge, though I think we could've thought of a better way.
=end