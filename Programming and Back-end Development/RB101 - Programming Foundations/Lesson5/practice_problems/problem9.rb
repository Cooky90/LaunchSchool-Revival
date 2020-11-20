# Given the data structure, return a new array of the same structure but with the sub arrays being ordered
# in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

result = arr.map do |element|
  element.sort do |a,b|
    b <=> a
  end
end

p result