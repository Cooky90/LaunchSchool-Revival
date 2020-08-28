def multisum(number)
  total = 0
  number.times do |i|
    current_number = i + 1
    total += current_number if (current_number % 3).zero? || (current_number % 5).zero?
  end
  total
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
