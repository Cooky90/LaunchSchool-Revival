# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'

# The counter variable in the method and the counter variable initialised on line 5 are independent variables.
# Whilst having the same name, the variable within the counter references the same object but they are seperate variables
# with different scopes. Within the method the counter local variable is simply re-assigning itself each time.

# As this counter variable within the method def is not the same variable as on line 5, the object the variable on line 5 is referencing
# isn't affected.

# In order to resolved this, we can change the method definition so that it returns the integer object passed in as an argument but
#  decreased by 1. Within the times block, we can re-assign the counter local variable of line 5 to the return value of the decrease method
#  invocation.

def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'