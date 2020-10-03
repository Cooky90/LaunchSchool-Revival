def print_in_box(string)
  vertical_border = '+' + '-' * (string.size + 2) + '+'
  filler_vertical = '|' + ' ' * (string.size + 2) + '|'
  string_row = '|' + " #{string} " + '|'

  puts vertical_border + "\n" + filler_vertical + "\n" + string_row + "\n" + filler_vertical + "\n" + vertical_border
end

print_in_box('testing this string')
print_in_box('To boldly go where no one has gone before.')

