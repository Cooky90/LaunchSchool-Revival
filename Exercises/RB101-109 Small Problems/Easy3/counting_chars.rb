def char_count
  puts "Please write a word or multiple words:"
  word_input = gets.chomp

  size = word_input.split.join.size
  puts "There are #{size} characters in \"#{word_input}\"."
end

char_count