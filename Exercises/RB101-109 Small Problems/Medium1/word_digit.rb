LOOKUP = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight'=> '8',
  'nine' => '9'
}

p LOOKUP

def word_to_digit(string)
  p string.split(' ').map { |word| LOOKUP[word.scan(/[a-zA-Z]+/).first] ? word.gsub(/[a-zA-Z]+/,LOOKUP[word.scan(/[a-zA-Z]+/).first]) : word }.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'