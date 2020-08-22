def century(year)
  century = year / 100
  century += 1 unless (year % 100) == 0

  SUFFIX_HASH =
    {
      '1' => 'st',
      '2' => 'nd',
      '3' => 'rd',
      '4' => 'th',
      '5' => 'th',
      '6' => 'th',
      '7' => 'th',
      '8' => 'th',
      '9' => 'th',
      '0' => 'th'
    }
  return "#{century}th" if century.to_s[-2..-1].to_i.between?(4, 20)

  "#{century}#{suffix_hash[century.to_s[-1]]}"

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
