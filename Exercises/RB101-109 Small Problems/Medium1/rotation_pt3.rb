def rotate_array(array)
  new_array = array.clone
  new_array.push(new_array.shift)
end

def rotate_rightmost_digits(numbers, rotation_count)
  numbers_array = numbers.to_s.chars.map(&:to_i)
  result = numbers_array.first(numbers_array.size - rotation_count) + rotate_array(numbers_array[-rotation_count..-1])
  result.join.to_i
end

def max_rotation(num)
  new_num = num
  number_size = num.to_s.size

  number_size.downto(2) do |i|
    new_num = rotate_rightmost_digits(new_num,i)
  end
  new_num.to_i
end

# rotate_rightmost_digits method only needs to be applied certain port
# so first time full set, then full set minus first digit and so on
# array.last 6, array.last 5 etc

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845