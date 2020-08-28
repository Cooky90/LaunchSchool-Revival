LOOKUP =
{
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '0' => 0,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(string)
  array =  string.upcase.split('').map { |i| LOOKUP[i] }
  p array
  array.inject { |a, i| a * 16 + i }
end

p hexadecimal_to_integer('4D9f') == 19871

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570
