# Given this data structure write some code to return an array which contains only hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

hash = {}
result = arr.select do |element|
  element.values.flatten.all?{|x| x.even?}
end

p result