def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator. Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Please enter your name: ")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  number1 = ''
  loop do
    prompt("Enter your first number:")
    number1 = Kernel.gets().chomp().to_i

    if valid_number?(number1)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("Enter your second number:")
    number2 = Kernel.gets().chomp().to_i

    if valid_number?(number2)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  selection = ''
  loop do
    selection = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(selection)
      break
    else
      prompt("Please enter a valid operation(1,2,3 or 4).")
    end
  end

  prompt("#{operation_to_message(selection)} the two numbers...")

  result = case selection
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt('Would you like to perform another calculation? '\
  '(Y to calculate again)')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
