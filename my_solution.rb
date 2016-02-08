# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # private

  def virus_effects
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
  # def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
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
    death_ratios = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1, 0 => 0.05}

    number_of_deaths = (@population * death_ratios.values_at(death_ratios.keys.find {|pop_den| @population_density >= pop_den})[0]).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread
  # def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    speed_ratios = {200 => 0.5, 150 => 1.0, 100 => 1.5, 50 => 2.0, 0 => 2.5}

    speed = speed_ratios.values_at(speed_ratios.keys.find {|pop_den| @population_density >= pop_den})[0]
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

class Report

  # attr_reader :report, :states

  # def initialize
  #   @report = []
  #   @states = STATE_DATA.keys
  # end

  def states_loop
    # @states.each do |state|
    #   puts x = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    #   @report << x.virus_effects
    # end      
    STATE_DATA.each do |key, value|
      ind_state = VirusPredictor.new(key, value[:population_density], value[:population])
      ind_state.virus_effects
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

all_state_report = Report.new
all_state_report.states_loop


#=======================================================================
# Reflection Section