def reverse!(array)
  array_size = (array.size - 1)
  orig_array = array.clone

  array.size.times do |i|
    array[i] = orig_array[array_size]
    array_size -= 1
  end
  array
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []