# input: array
# output: array

# [[1, 5, 8], [4, 7, 2], [3, 9, 6]] =>[[1, 4, 3], [5, 7, 9], [8, 2, 6]]

# iterate through array, first element of each sub array goes into first new array
# second elements of sub array fill up the new array
# use push so the element is append to the array


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# def transpose(array)
#   new_array = []
#   array.size.times {|_| new_array.push([]) }
#   array.each_with_index do |sub_array, outer_index|
#     sub_array.each_with_index do |element, inner_index|
#       new_array[inner_index][outer_index] = element
#     end
#   end
#   new_array
# end

def transpose(array)
  new_array = []
  columns = array.first.size
  rows = array.size

  (0...columns).each do |column_index|
    new_row = (0...rows).map {|row_index| array[row_index][column_index]}
    new_array << new_row
  end
  p new_array
end

# First we initialise the new_array local variable with an empty array to store the results
# columns local var is initialised and is assigned to the amount of columns we'll have
# rows is assigned to the depth or rows we will have, which is how many sub arrays we have

# so the columns is elements in orig array, which determins the depth of the new array
# the rows av is determined by how many sub arrays, which then determines how many rows we'll have

# iterate through the columns of the original array, which provides the d

# 

# transpose(matrix)

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([
              [1, 2, 3, 4, 5], 
              [4, 3, 2, 1, 0], 
              [3, 7, 8, 6, 2]
            ]) ==
            [
              [1, 4, 3], 
              [2, 3, 7], 
              [3, 2, 8], 
              [4, 1, 6], 
              [5, 0, 2]
            ]
# p transpose([[1]]) == [[1]]






