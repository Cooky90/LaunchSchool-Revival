def crunch(string)
  new_string = ''
  string.split('').each do |char|
    if char != new_string[-1]
      new_string << char
    end
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''