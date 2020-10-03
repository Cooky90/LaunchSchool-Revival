def find_fibonacci_index_by_length(num)
  prev_num = 1
  current_num = 1
  iteration = 2
  until current_num.to_s.size == num
    current_num += prev_num
    prev_num = current_num - prev_num
    iteration += 1
  end
  iteration
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847