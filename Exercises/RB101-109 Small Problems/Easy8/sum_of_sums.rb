def sum_of_sums(array)
  total = 0
  array.size.times do |number|
    total += array[0..(number)].inject(:+)
  end
  total
end

p sum_of_sums([3, 5, 2]) == (21)
p sum_of_sums([1, 5, 7, 3]) == (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35