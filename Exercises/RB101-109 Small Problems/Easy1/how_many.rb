vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurrences(items)
#   hash = {}
#   items.each do |vehicle|
#     if hash.key?(vehicle)
#       hash[vehicle] += 1
#     else
#       hash[vehicle] = 1
#     end
  # end
#   hash
# end

def count_occurrences(items)
  result = {}
  items.uniq.each{|vehicle| result[vehicle] = items.count(vehicle)}
  result
end

count_occurrences(vehicles)

# Expected:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

