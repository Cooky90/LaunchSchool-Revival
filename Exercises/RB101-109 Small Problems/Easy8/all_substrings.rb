def substrings(string)
  result = []
  string.chars.each_with_index do |letter, index|
    (string.size - index).times { |num| result << string[index..(index + num)] }
  end
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]