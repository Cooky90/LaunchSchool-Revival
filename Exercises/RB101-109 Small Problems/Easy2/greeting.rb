def greet_user
  puts "What is your name?"
  name = gets.chomp
  if name[-1] == '!'
    puts "HELLO #{name.gsub(/[!]/,'').upcase}. WHY ARE ARE SCREAMING?"
  else
    puts "Hello #{name}"
  end
end

greet_user