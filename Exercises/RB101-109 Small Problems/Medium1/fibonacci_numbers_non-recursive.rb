def fibonacci(number)
  store_results = [0, 1]
  iteration = 2

  iteration.upto(number) { |_| store_results << store_results[-2] + store_results[-1] }

  store_results.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
