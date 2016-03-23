# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is a pointer to another file, a path. Require_relative is a method that takes a string for its arguement
  # Local scope
# require is used to add external libraries
  # Global scope

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Method virus_effects
#PRINT return values of predicted_deaths and speed_of_spread
  def virus_effects
    "#{@state} will lose #{predicted_deaths} people in this outbreak"
    " and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

#Method predicted_deaths takes population_density, population, state as an arguement
#IF statement to apply a scale factor to the population density to find the number of deaths (rounding down)
#PRINT a statement with the sate and number of deaths associated with outbreak
  def predicted_deaths
    case @population_density; when 200; (@population * 0.4).floor; when (150..199); (@population * 0.3).floor; when (100..149); (@population * 0.2).floor; when (50..99); (@population * 0.1).floor; else; (@population * 0.05).floor;
    end
  end


#Method speed of spread takes arguement population_density and state
#IF statement to create a scale to calculate the time it takes for the virus to spread
#PUTS the statement of how long it will take the virus to spread
  def speed_of_spread
     #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density; when 200; speed = 0.5; when (150..199); speed = 1; when (100..149); speed = 1.5; when (50..99); speed = 2; else; speed = 2.5;
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


 STATE_DATA.each do |state, virus_data|
  virus_state = VirusPredictor.new(state, virus_data[:population_density],
    virus_data[:population])
  virus_state.virus_effects
 end

#=======================================================================
=begin
Reflection Section
What are the differences between the two different hash syntaxes shown in the state_data file?
  One of the Hash syntax is a global hash while the other one is not. Those are the main difference.
What does require_relative do? How is it different from require?
  require_relative is a pointer to another file, a path. Require_relative is a method that takes a string for its arguement. It is also a Local scope. Require is used to add external libraries and it is a global scope
What are some ways to iterate through a hash?
  Some ways to interate through a has is by .each and do |key, value| then we set the key and value to the variables that we are trying to iterate through.
When refactoring virus_effects, what stood out to you about the variables, if anything?
  Well for virus_effects we ended up not even using the instance variables because they were not needed since we were defining arguements in the method as well.
What concept did you most solidify in this challenge?
  I think the most solidifing thing in this challenge was use case statements. We were able to figure out how to use case statements in one line which made the code much more dry!
=end