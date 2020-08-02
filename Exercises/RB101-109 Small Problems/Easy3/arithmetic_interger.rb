def arithmetic_integer()
  puts "Enter first number:"
  number1 = gets.chomp.to_i
  puts "Enter second number:"
  number2 = gets.chomp.to_i

  puts "#{number1} + #{number2} = #{number1 + number2}"
  puts "#{number1} - #{number2} = #{number1 - number2}"
  puts "#{number1} * #{number2} = #{number1 * number2}"
  puts "#{number1} / #{number2} = #{number1 / number2}"
  puts "#{number1} % #{number2} = #{number1 % number2}"
  puts "#{number1} ** #{number2} = #{number1 ** number2}"
end

arithmetic_integer