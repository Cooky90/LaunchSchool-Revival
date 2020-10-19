def center_of(string)
  string_size_half = (string.size / 2)
  if string.size.odd?
    string[string_size_half]
  elsif string.size.even?
    string[(string_size_half - 1)..string_size_half]
  end
      
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'