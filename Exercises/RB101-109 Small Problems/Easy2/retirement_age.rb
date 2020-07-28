def retirement_age
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "What age would you like to retire?"
  retirement_age = gets.chomp.to_i

  t = Time.now

  years_left_working = retirement_age - age

  puts "#{years_left_working}"
  puts "It's #{t.year}. You retire in #{(t.year.to_i) + years_left_working}"
end

retirement_age