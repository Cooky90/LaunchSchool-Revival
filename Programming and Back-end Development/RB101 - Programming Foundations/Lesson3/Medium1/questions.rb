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

