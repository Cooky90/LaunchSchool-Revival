def rotate_array(array)
  new_array = array.clone
  new_array.push(new_array.shift)
end

def rotate_rightmost_digits(numbers, rotation_count)
  numbers_array = numbers.to_s.chars.map(&:to_i)
  result = numbers_array.first(numbers_array.size - rotation_count) + rotate_array(numbers_array[-rotation_count..-1])
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p rotate_rightmost_digits(352917, 5) == 329175