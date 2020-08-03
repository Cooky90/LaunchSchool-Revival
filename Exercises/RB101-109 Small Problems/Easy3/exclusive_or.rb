def xor?(arg1, arg2)
  return true if (arg1 == true) && (arg2 == false)
  return true if (arg2 == true) && (arg1 == false)
  return false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false