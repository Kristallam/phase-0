
# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.

# errors.rb:171: syntax error, unexpected end-of-input, expecting keyword_end

#def cartman_hates(thing)
  #while true
  # puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? The file the error is on is errors.rb
#
# 2. What is the line number where the error occurs? The error is occuring on line 17
#
# 3. What is the type of error message? This is an unexpected keyword error
#
# 4. What additional information does the interpreter provide about this type of error? It tells us that the unexpected keyword_end
#
# 5. Where is the error in the code? the syntax is not complete and then it just ends
#
# 6. Why did the interpreter give you this error? The interperter gave this code because it ended before the code was complete
#

# errors.rb:36:in `<main>': undefined local variable or method `south_park' for main:Object (NameError)

# south_park

# 1. What is the line number where the error occurs? The error is on line 36
#
# 2. What is the type of error message? This is a name error
#
# 3. What additional information does the interpreter provide about this type of error? it provides the syntax and it also says that it was not defined as a local variable or method
#
# 4. Where is the error in the code? the error is south_park, it is not defined as a variable or method
#
# 5. Why did the interpreter give you this error? Because "south_park" was not defined as a variable or method so ruby could not read it
#

# errors.rb:52:in `<main>': undefined method `cartman' for main:Object (NoMethodError)

# cartman()

# 1. What is the line number where the error occurs? Line 52 is where the error occurs
#
# 2. What is the type of error message? No method error
#
# 3. What additional information does the interpreter provide about this type of error? it is showing the syntax that should have a method but it doesnt
#
# 4. Where is the error in the code? "cartman ()" needs a def before it
#
# 5. Why did the interpreter give you this error? because the syntax had no method before it
#

# errors.rb:67:in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)
# from errors.rb:71:in `<main>'

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs? The error is on line 67
#
# 2. What is the type of error message? this is a arugment error
#
# 3. What additional information does the interpreter provide about this type of error? it is showing that there are wrong number of arguments
#
# 4. Where is the error in the code? the error is after the method, there is no arugments
#
# 5. Why did the interpreter give you this error? because after "def cartmans_phrase () <--" missing the ()
#

# errors.rb:87:in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError)
#  from errors.rb:91:in `<main>'

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs? the error is on line 91
#
# 2. What is the type of error message? It is a Argument error
#
# 3. What additional information does the interpreter provide about this type of error? it is howing that after the method when they call "cartman_says" there is no argument
#
# 4. Where is the error in the code? the error is after the method where it reads cartman_says
#
# 5. Why did the interpreter give you this error? Because cartman_says does not have any argument
#



# errors.rb:109:in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError) from errors.rb:113:in `<main>'

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs? The error is on like 113
#
# 2. What is the type of error message? This is a Arugment error
#
# 3. What additional information does the interpreter provide about this type of error? It is showing that the paramaters on line 113 isn't right
#
# 4. Where is the error in the code? Line 13 within the ()
#
# 5. Why did the interpreter give you this error? Because the method calls for two paramaters lie and name but when it is called it only has one
#

# errors.rb:128:in `*': String can't be coerced into Fixnum (TypeError) from errors.rb:128:in `<main>'

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs? The error is on line 128
#
# 2. What is the type of error message? this is a type error
#
# 3. What additional information does the interpreter provide about this type of error? it is saying the string cannot be coerced into Fixnum from error
#
# 4. Where is the error in the code? the error is the * symbol
#
# 5. Why did the interpreter give you this error? Because the syntax cannot have a * symbol
#

#errors.rb:143:in `/': divided by 0 (ZeroDivisionError) from errors.rb:143:in `<main>'

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs? The error is on line 143
#
# 2. What is the type of error message? it is a Zero Division error
#
# 3. What additional information does the interpreter provide about this type of error? It gives you the division symbol and what it was divided by
#
# 4. Where is the error in the code? the error is when it gets divided by 0
#
# 5. Why did the interpreter give you this error? Because you can't divide anything by 0, you get an error in the calculator
#

#errors.rb:159:in `require_relative': cannot load such file -- /Users/klam886/phase-0-curriculum/phase-0/week-4/cartmans_essay.md (LoadError) from errors.rb:159:in `<main>

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs? The error is on line 159
#
# 2. What is the type of error message? this is a LoadError
#
# 3. What additional information does the interpreter provide about this type of error? It shows the whole file path where it's trying to load the file
#
# 4. Where is the error in the code? the error is the file, because it does not exsist
#
# 5. Why did the interpreter give you this error? It is getting this error because it is trying to link the file cartmans_essay.md but that file does not exsist on my computer
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read? I personally thought the error that was hardest to read was the syntax error, because it doesn't give you as much information as the other ones.
#
#How did you figure out what the issue with the error was? I figured it out because it was pretty clear with what line and the error that it gives is pretty straight forward, like load error, arugment error
#
#Were you able to determine why each error message happened based on the code? Yeah I was able to, I think as I did more it becamse more and more easy to idfentify it.
#
#When you encounter errors in your future code, what process will you follow to help you debug? I will follow the file name, then go to the line, and then check the error code and follow what type of error it is.



