require_relative 'state_data'


class VirusPredictor
  
  # intialize instance variables or attributes by taking parameters
  

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
  # this method calls upon other methods

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  # Releas 7
  # private makes the methods below it only accessible to that class. This is done to secure information of your program so that it isnt accessible to everyone
  
  
  # this method calculates the deaths according to the density and population of the state

#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
      
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
    
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
    
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
   
#     else
#       number_of_deaths = (@population * 0.05).floor
    # end
      
   
  
  #____________Release 8
  
   def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    number_of_deaths = 
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
     (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
    #____________
  # this method will calculate the speed of spread the virus according to the population density of the state

#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
    
#     time = 0.0

    
#     if @population_density >= 200
#       time += 0.5
#     elsif @population_density >= 150
#       time += 1
#     elsif @population_density >= 100
#       time += 1.5
#     elsif @population_density >= 50
#       time += 2
#     else
#       time += 2.5
#     end

#     puts " and will spread across the state in #{time} months.\n\n"

#   end
# end
  
    def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
      # Release 8   ------------------------------------------
    time = 0.0

    time +=
    if @population_density >= 200
       0.5
    elsif @population_density >= 150
       1
    elsif @population_density >= 100
       1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{time} months.\n\n"

  end
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

# Release 5
# print out all states in one method

STATE_DATA.each_key do |state|
  all_states = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  all_states.virus_effects
end



#=======================================================================
# Reflection

# What are the differences between the two different hash syntaxes shown in the state_data file?
# in the state_data we are looking at one hash and inside state_data have many hashes.
#   one hash is put out with "Alabama" => "Birmingham" and the other hash is put out alabama: "Brimingham"

# What does require_relative do? How is it different from require?

# require_relative=====
# require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
# require_relative '../../../file'

# require './file'
# require 'faker'
# Require ===
#   require uses the current directory that you are running the program from
#/app
  # - file.rb # <- data
  # /folder 
  #   - ruby.rb # <- here

# What are some ways to iterate through a hash?
# hash.each
# hash.each_key
# hash.each_value
# hash.each_index

# When refactoring virus_effects, what stood out to you about the variables, if anything? they are useing dicripted words for variables.

# What concept did you most solidify in this challenge?
# how to work with hashes, and to use this data to calculate other data through methods.