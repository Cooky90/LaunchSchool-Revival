def letter_percentages(string)
  string_size = string.size

  lowercase_count = string.scan(/[a-z]/).size
  uppercase_count = string.scan(/[A-Z]/).size
  remainder = string_size - (lowercase_count + uppercase_count)

  {
    lowercase: (lowercase_count.fdiv(string_size) * 100),
    uppercase: (uppercase_count.fdiv(string_size) * 100),
    neither: (remainder.fdiv(string_size) * 100)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
