#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: name
# Output: greeting
# Steps:
  # Class that gets name data
  # set instance var @name
  # Class greeting
  # set instance var @person
  # set greeting
  # call the greeting

class NameData
  attr_reader :name
    def initalized(name)
      @name = "Kristal"
  end
end


class Greetings
  def initialize(person)
    @person = person
  end

  def hi
    "Hi there #{@person}"
  end
end

hi = Greetings.new
greet.hi

=begin
RELEASE 1
What are these methods doing?
  The methods are taking a profile and then having all the information changed later. They added sleep which pauses the repsonse instead of having it instantly do it.
How are they modifying or returning the value of instance variables?
  They are modifying it by setting @age, @name, @occupation to a new instance variable below the first input so then it will be changed.

What changed between the last release and this release?
  What changed was that what_is_name? was no longer needed. Even with that taken out the output was exactly the same.
What was replaced?
  They added the attr reader: age which then was able to take out the method def what_is_age.
Is this code simpler than the last?
  The code is simpler than the last one.

RELEASE 3
What changed between the last release and this release?
  This added the attr writer: age which lets you edit the age as well.
What was replaced?
  The method change_my_age setting @age = new_age was repalced because of the attr_writer :age.
Is this code simpler than the last?
  The code is simpler.

RELEASE 4
CHANGED THE CODE

REFLECTION
What is a reader method?
  Reader method returns a value or state outside of class but does not change
What is a writer method?
  Writer method, you can change the value of the variable outside of class, but not readable.
What do the attr methods do for you?
  attr methods allow you to change the data outside of the class without creating a new instance var within the method or class.
Should you always use an accessor to cover your bases? Why or why not?
  You should because it keeps your code clean but you should be aware if you are using reader, writer, or accessor for debugging purposes
What is confusing to you about these methods?
  Nothing is too confusing, I think doing release 4 helped me understand it a lot better.

=end