# def running_total(array)
#   return [] if array.empty?
#   answer_array = [array[0]]
#   1.upto(array.size - 1) do |i|
#     answer_array << (answer_array[-1] + array[i])
#   end
#   answer_array
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

### Solve with inject method!

def running_total(array)
  answer_array = []
  array.inject(0) do | sum, value|
    answer_array << sum + value # this operation is to just get the value into the array
    15 # + operator(default) is applied to whatever the sum value is and the last value
  end
  p answer_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []