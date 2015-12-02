# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  #Defining variables and making them availabile for use as instance methods.  This allows us to create an instance of the VirusPredictor class.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # private
  #This calls two other methods that are defined below.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Takes the information from an instance of our class and mainpulates this data with control flow and calculations.  This control flow implies the higher the density, the more deaths.  It returns an integer due to the floor method (since these are deaths, we can't have a fraction of a death).  This method also prints to the console how many people will die in this outbreak.

  def predicted_deaths
    # predicted deaths is solely based on population density

    # case @population_density
      #       use pattern of dividing by 500
    #   when 150..200 then number_of_deaths = (@population * 0.4).floor
    # end

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    else
      number_of_deaths = @population*(@population_density/500).floor
    end


      # number_of_deaths = (@population * X).floor
      #         defines X based on @population_density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This methods takes the population density and, using control flow, adds a certain amount of speed based on how dense it is.  The less dense a population is, the higher the speed.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end



end

# Run report for all states
def run_report(hash)
  hash.each do |key, value|
    key = VirusPredictor.new(key, hash[key][:population_density], hash[key][:population])
    key.virus_effects
  end
end




#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
run_report(STATE_DATA)


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section