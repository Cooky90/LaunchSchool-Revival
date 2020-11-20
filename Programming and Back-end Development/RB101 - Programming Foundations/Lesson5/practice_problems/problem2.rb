# How would you order this array of 
# hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# The below code returns an enumerator of the original hash, the code in the block is what we need to be executed
# but this is a good demonstration of precedence. The p binds itself to books, whereas if we use the {} block syntax
# the p does not bind itself to the object like the first example due to higher precedence.

# p books.sort_by do |hash| Binding gone "wrong" example
#   hash[:published].to_i
# end

# p books.sort_by { |hash| hash[:published].to_i } Binding gone "correct" example

books.sort_by { |hash| hash[:published].to_i }