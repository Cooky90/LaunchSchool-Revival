def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Method whether array is palindromic

def palindromic_array?(array)
  array_last_index = (array.length - 1)

  array.each do |element|
    if element != array[array_last_index]
      return false
    end
    array_last_index -= 1
  end
  true
end

p palindromic_array?(['m','a','d','a','m']) == true
p palindromic_array?(['M','a','d','a','m']) == false          # (case matters)
p palindromic_array?(['3','5','6','6','5','3']) == true