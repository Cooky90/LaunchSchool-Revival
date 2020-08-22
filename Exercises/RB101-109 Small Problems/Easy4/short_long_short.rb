def short_long_short(string1, string2)
  array = [string1, string2].sort_by { |e| e.size  }
  short_string, long_string = array[0], array[1]
  short_string + long_string + short_string
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
