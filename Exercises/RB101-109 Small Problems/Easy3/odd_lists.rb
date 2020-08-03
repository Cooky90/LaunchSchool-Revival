def oddities(array)
  array.select.with_index{|e,index| index.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def oditites_by_4th(array)
  array.select.with_index{|e,index| (((index + 1) % 4) == 0) }
end

p oditites_by_4th([2, 3, 4, 5, 6])