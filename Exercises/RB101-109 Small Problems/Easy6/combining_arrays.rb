def merge(arr1,arr2)
  arr2.each do |element|
    arr1 << element if !arr1.include?(element)
  end
  arr1.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]