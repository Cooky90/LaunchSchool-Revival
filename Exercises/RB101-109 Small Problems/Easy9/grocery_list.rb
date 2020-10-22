def buy_fruit(array)
  result = []
  array.each { |element| element[1].times { result << element[0] } }
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
  