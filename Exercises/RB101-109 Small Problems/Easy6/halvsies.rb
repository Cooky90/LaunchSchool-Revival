def halvsies(arr1)
  array = []
  halfway_point = (arr1.size.to_f / 2).round
  array << arr1[0..(halfway_point - 1)]
  array << arr1[halfway_point..(arr1.size - 1)]
  array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]