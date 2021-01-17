# P: Take a string as argument, check if all parentheses are balanced corrected.
# Return true or false depending on string.

# E:
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false

# D:
# Input: string
# Output: boolean

# A:
# Create hash to count left and right parentheses.
# Iterate through string chars. If ( or ), increment hash.
# If right ) count is ever higher than left ( count return false
# Else true

def balanced?(string)
  parentheses_count = { '(' => 0, ')' => 0 }

  string.chars.each do |char|
    parentheses_count[char] += 1 if char == ('(' || ')')
    return false if parentheses_count[')'] > parentheses_count['(']
  end
  parentheses_count.values.sum.even? ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
