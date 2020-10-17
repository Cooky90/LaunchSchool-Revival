def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  result = []
  string.chars.each_with_index do |letter, index|
    (string.size - index).times do |num| 
      if palindrome?(string[index..(index + num)]) 
        result << string[index..(index + num)]
      end
    end
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]