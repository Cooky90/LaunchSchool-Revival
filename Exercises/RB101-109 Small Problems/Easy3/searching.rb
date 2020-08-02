def searching_101
  numbers = []
  number_lookup = {'1': '1st', '2': '2nd', '3': '3rd', '4': '4th', '5': '5th'}

  5.times do |i|
    puts "Enter the #{number_lookup[(i + 1).to_s.to_sym]} number:"
    number = gets.chomp
    numbers << number
  end
  puts "Enter the last number:"
  last_number = gets.chomp
  if numbers.include? last_number
    puts "The number #{last_number} appears in #{p numbers}."
  else
    puts "The number #{last_number} does not appear in #{p numbers}."
  end
end

searching_101