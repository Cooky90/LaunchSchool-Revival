# Problem: 
# A bank of switches, numbered from 1 to n.
# All lights switched "off" initially after the first iteration all the lights are switched "on".
# Second iteration, walk along and turn off 2 and 4.
# This process continues by turning off/on lights until n repetitions have been met.

# Examples:
# 1: [*][*][*][*][*]
# 2: [*][ ][*][ ][*]
# 3: [*][ ][ ][ ][*]
# 4: [*][ ][ ][*][*]
# 5: [*][ ][ ][*][*]

# # Data Structure:
# A hash would be most suited for storing the light status, lamp1,2,3,4,5 etc and their status held as the key.

# Algorithm:
# Create new hash. Create a key for each lamp which is an argument passed into the method.

# Iterate for n times.

# Each iteration, check to see if the iteration value is can be divided by the lamp number completely.
# If can be divided then the lamp status needs changing.
# 1 and 0 can be used to determine lamp status, or a symbol. Symbol's would be easier to understand from a visual perspective.

# Code:

def toggle_switch(current_status)
  current_status == :on ? :off : :on
end

def initialise_lights(number_of_lights)
  hash =  Hash.new
  number_of_lights.times{ |i| hash[(i + 1)] = :off }
  hash
end

def iterate_through_lights(number_of_lights)
  lights_hash = initialise_lights(number_of_lights)
  1.upto(number_of_lights) do |n|
    lights_hash.map do |number,status|
      if ((number % n) == 0)
        lights_hash[number] = toggle_switch(lights_hash[number])
      else
        lights_hash[number] = status
      end
    end
  end
  lights_hash
end

def select_lights_on(lights_hash)
end

p iterate_through_lights(10)
p iterate_through_lights(5)



