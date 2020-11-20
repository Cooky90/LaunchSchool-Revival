# Given the code below what will be the values of a and b:

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

a = 2
b = [3, 8]

# a is still 2 because arr[0] += 2 is only reassigning the return value to the first element in the array.
# It is esentially re-assignment of the value in the array.

# b does change however as it references an array, as the value in the array is being modifiying by having a new value
# assigned at index 0.