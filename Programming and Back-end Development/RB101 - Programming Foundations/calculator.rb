# ask the user for two numbers
# ask the user for an operation
# perform the operation
# output the result

Kernel.puts("Welcome to the calculator")

Kernel.puts("Enter your first number:")
number1 = Kernel.gets().chomp().to_i

Kernel.puts("Enter your second number:")
number2 = Kernel.gets().chomp().to_i

Kernel.puts("Please select an operation: 1)add 2)subtract 3)multiply 4)divide")
selection = Kernel.gets().chomp()

if selection == '1'
	result = number1 + number2
elsif selection == '2'
	result = number1 - number2
elsif selection == '3'
	result = number1 * number2
elsif selection == '4'
	result = number1.to_f() / number2.to_f()
end

Kernel.puts(result)
		
		
