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

def string_to_integer(string)
  array =  string.upcase.split('').map { |i| LOOKUP[i] }
  array.inject { |a, i| a * 10 + i }
end

def string_to_signed_integer(string)
  if string[0] == '+'
    string = string.gsub(/[^0-9]/,'')
    string_to_integer(string)
  elsif string[0] == '-'
    string = string.gsub(/[^0-9]/,'')
    string_to_integer(string) * -1
  else
    string_to_integer(string)
  end 
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100