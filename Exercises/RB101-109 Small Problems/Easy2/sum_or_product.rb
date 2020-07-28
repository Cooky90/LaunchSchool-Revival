def sum_or_product
  puts "Please enter an integer greater than 0:"
  number = gets.chomp.to_i

  puts "Enter 's' to computer the sum, 'p' to compute the product"
  option = gets.chomp.downcase

  if option == 's'
    puts (1..number).map.inject(:+)
  elsif option == 'p'
    puts (1..number).map.inject(:*)
  end

end

sum_or_product