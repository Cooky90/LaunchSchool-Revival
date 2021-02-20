#input intger
#output integer

# Write a method that computes the difference between the square of the sum of 
# the first n positive integers and the sum of the squares of the first n positive integers.

# Two numbers must be put together in order to be subtracted from one another

# First number, sum of numbers going from 1 to n 

# Second number, sum of squared numbers from 1 to n

def sum_square_difference(integer)
  numbers_array = (1..integer).to_a
  (numbers_array.sum**2) - (numbers_array.reduce(0) { |sum, num| sum + (num**2) })
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150