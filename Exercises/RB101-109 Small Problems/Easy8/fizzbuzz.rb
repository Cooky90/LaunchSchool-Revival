def fizzbuzz(num1,num2)
  string = []
  num1.upto(num2) do |n|
    if (n % 5 == 0 && n % 3 == 0)
      string << "FizzBuzz"
    elsif n % 5 == 0
      string << "Buzz"
    elsif n % 3 == 0
      string << "Fizz"
    else
      string << n.to_s
    end
  end
  string.join(', ')
end

p fizzbuzz(1, 15)