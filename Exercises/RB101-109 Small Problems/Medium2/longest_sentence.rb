book = File.read("book.txt")

p book.split(/(?<=\.)|(?<=\?)|(?<=!)/).sort_by { |sentence|sentence.split.size }.reverse.first.strip.split.size

