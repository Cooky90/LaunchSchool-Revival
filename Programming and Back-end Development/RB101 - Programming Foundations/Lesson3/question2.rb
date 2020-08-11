Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

1 what is != and where should you use it?
2 put ! before something, like !user_name
3 put ! after something, like words.uniq!
4 put ? before something
5 put ? after something
6 put !! before something, like !!user_name

1 Is another way of saying DOES NOT EQUAL, essentially the opposite of ==
2 !object turns the object into the opposite boolean value it evaluates to
3 ! after a method USUALLY suggests the method is destructive i.e it mutates the caller or an argument
4 ? is usually used as the ternary operator
5 usually used at the end of the method to suggest it will return a boolean
6 converts the object into a boolean value
