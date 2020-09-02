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
  '0' => 0
}

def integer_to_string(number)
  number.digits.map{|num| LOOKUP.key(num) }.join('').reverse
end

def signed_integer_to_string(number)
  negative_flag = false

  if number < 0
    negative_flag = true
  elsif number == 0
    return integer_to_string(number)
  end

  result = integer_to_string(number.abs)

  negative_flag ? '-'.concat(result) : '+'.concat(result)
      
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'