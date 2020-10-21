def get_grade(num1, num2, num3)
  average = ((num1 + num2 + num3) / ARGV.length)
  case 
  when average.between?(90,100)
    'A'
  when average.between?(80,89)
    'B'
  when average.between?(70,79)
    'C'
  when average.between?(60,69)
    'D'
  when average.between?(0,59)
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"