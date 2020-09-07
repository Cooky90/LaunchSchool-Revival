ALPHABET = ('a'..'z').to_a

# def cleanup(string)
#   string.gsub(/[^a-z]/,' ').squeeze(" ")
# end

# p cleanup("---what's my +*& line?") == ' what s my line '

def cleanup_mod(string)
  string.split('').each.with_index do |letter,index|
    if !ALPHABET.include?(letter)
      string[index] = ' '
    end
  end
  string.squeeze(" ")
end

p cleanup_mod("---what's my +*& line?") == ' what s my line '