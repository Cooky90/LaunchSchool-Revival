Question 1.

Print a string 10 times, adding an extra space at the start on each iteration.

Answer:

10.times do |i|
  puts (" " * i) + "The Flintstones Rock!"
end

Question 2.

Why will the following code return an error?

puts "the value of 40 + 2 is " + (40 + 2)

Answer:

40 + 2 returns type Integer so it would need converting to a string in order
to concatenate it on to another string.

Question 3.

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

Use a while or until loop in order to ensure the loop only occurs when the divisor ISN'T 1! The current loop still 

The purpose of the using using the modulo operator is to check if there is a remainder after the divsion operation.

Line 8 returns the array containing the factors, other the method would simply return nil.

Question 4.

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

Using << will mutate the array that is passed in as an argument, whereas using + will NOT mutate the argument that is passed in.

Question 5.

limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

Because limit is out of scope within the method, an error will be raised when the method tries to use the limit var.
In order for this method to work it would require the limit variable to be passed in as an additonal arguement.

Question 6.

What is the output for the following code:

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

34, this is because the 42 is never actually mutated. Integers are immutable objects anyway.

Question 7.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)
Did the family's data get ransacked? Why or why not?

Answer: 

The data is affected because when the hash is passed into the method, a reference to the
object id itself(the hash) is passed not the value. So as the local method variable
"demo_hash" is pointing to the same place which then has values re-assigned.

Question 8.

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

puts rps(rps("rps("rock", "paper")", rps("rock", "scissors")), "rock")

Answer:

This return value will be "paper".

Question 9.

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
What would be the return value of the following method invocation?

bar(foo)

Answer:

The above would return "no". The foo method will always return "yes",
the bar method ternary evaluates to "no".





