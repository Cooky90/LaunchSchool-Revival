numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

What would you expect the above to print out?

-------

I would expect the above to print out:
1
2
2
3

This is because the array uniq method returns an array but it does not mutate the original
array, uniq! does however.