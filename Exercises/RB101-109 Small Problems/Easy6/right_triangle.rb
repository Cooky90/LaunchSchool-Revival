def triangle(num)
  string = ''
  white_space_start = (num - 1)

  num.times do |i|
    puts (' ' * (white_space_start - i)) + ('*' * (i + 1))
  end
end

triangle(5)
triangle(9)