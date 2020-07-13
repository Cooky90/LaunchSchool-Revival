def reverse_words(string)
  new_string = string.split(' ').map do |word|
    if word.length >= 5
      word.split('').reverse.join('')
    else
      word
    end
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS