def multiply_all_pairs(array1, array2)
  result_array = []

  array1.each.with_index do |element, index|
    array2.each do |element2|
      result_array << (element * element2)
    end
  end
   result_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]