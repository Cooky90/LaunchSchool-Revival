# Bubble sort = Multiple iterations through a collection

# Each iteration, part of elements compared. If first is greater than second they are swapped.

# Process repeating until no swaps are required.



def bubble_sort!(array)
  swapped = true
  while swapped
    swapped = false
    array.each_with_index do |element, index|
      next if index == (array.size - 1)
      if element > array[index + 1]
        array[index],array[index + 1] = array[index + 1], element
        swapped = true
      end
    end
  end
  nil
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)