def swap_name(string)
  "#{string.split[1]}, #{string.split[0]}"
  # string.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'