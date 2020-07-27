def tip_calculator
  puts "What is the bill?"
  bill = gets.chomp.to_f

  puts "What is the tip percentage?"
  tip = gets.chomp.to_f

  tip_value = (bill / 100) * tip

  puts "The tip is £#{tip_value}"
  puts "The total is £#{bill + tip_value}"
end

tip_calculator