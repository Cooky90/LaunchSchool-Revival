CONSONANTS = %w(A E I O U)

def double_consonants(string)
  string.chars.map do |char|
    if char =~ /[a-zA-Z]/
    CONSONANTS.include?(char.upcase)? char : char * 2
  else
    char
  end
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""