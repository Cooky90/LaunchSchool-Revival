# PROBLEM:
# Write a method that takes on argument, an int. Int will always be an odd number.
# Iterate n times, outputting "*"'s to make a diamond shape.
# Total line size needs to equal n.
# Must represent a diamond shape.

# EXAMPLES:
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# DATA STRUCTURE:
# A string will be printed to the screen for each iteration.
# It will be calculated on the fly and re-assigned on each iteration.

# # ALGORITHM:
# new_n = n - 1 to calculate how many lines needed between the middle line.
# Divide new_n / 2, this gives the build-up and build-down of the diamond with a row of n * "*" inbetween.
# Iterate new_n.times to build top of the diamond.
#   First iteration, amounts of "*" = 1.
#   Space on each side is n.size - amount of "*" / 2.
#   Each iteration + 2 to amount of "*".
# Print middle line. 
# Then new_n.times to build bottom.
#   First iteration, amounts of "*" = 1.
#   Space on each side is n.size - amount of "*" / 2.
#   Each iteration + 2 to amount of "*".

# CODE:

def diamond(num)
  calculate_halve_sizes = (num - 1) / 2

  #First half of pattern
  amount_of_stars = 1 
  1.upto(calculate_halve_sizes) do |_|
    puts (' ' * ((num - amount_of_stars) / 2)) + '*' * amount_of_stars + (' ' * ((num - amount_of_stars) / 2))
    amount_of_stars += 2
  end
  
  #Middle half of pattern
  puts '*' * num 

  #Bottm half of pattern
  1.upto(calculate_halve_sizes) do |_|
    amount_of_stars -= 2
    puts (' ' * ((num - amount_of_stars) / 2)) + '*' * amount_of_stars + (' ' * ((num - amount_of_stars) / 2))
  end

end

diamond(1)
diamond(3)
diamond(9)