# what does the following code return and why?

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# The above code will print 'Alice' and 'Bob', this is because initally name variable
# is pointing at the 'Bob' string object, then save_name points to the same object.
# This could also be worded as the variable contains a REFERENCE to the object, instead
# of the value itself.

# Then name gets re-assigned, which simply means the name variable is now
# pointing OR is referencing the string object 'Alice'.

# and the same for the following code?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# The above code will print 'BOB' twice, each variable is pointing OR storing a
# refence to the same string object 'Bob'. However, upcase! mutates this object
# so they are now pointing at the same object but it has simply been mutated.