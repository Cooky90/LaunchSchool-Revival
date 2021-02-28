# input: integer
# output: string

# calculate the difference between each of the *s
# start with top row, set width of string is n
# n - 3(*s), gives the space inbetween the stars
# n / gives middle star spacing, which should always be the same
# each increment, divide the inner space by 2 to determine spacing on next row

def star_string(inner_spaces, outer_spaces)
  "#{' ' * outer_spaces}*#{' ' * inner_spaces}*#{' ' * inner_spaces}*#{' ' * outer_spaces}"
end

def star(num)
  first_half_pattern_array = []
  inner_space = star_spacing / 2
  outer_space = 0

  (num / 2).times do |_|
    puts star_string(inner_space, outer_space)
    first_half_pattern_array.unshift(star_string(inner_space, outer_space))
    inner_space -= 1
    outer_space += 1
  end
  puts ('*' * num).to_s
  first_half_pattern_array.each { |string| puts string }
end

star(7)

star(9)
