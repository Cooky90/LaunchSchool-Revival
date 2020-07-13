def stringy(number)
  string = ''
  number.times do |i|
    i.odd? ? string << '0' : string << '1'
  end
  string
end

# modified version that takes an argument

def stringy(number,start_num = 1)
  string = ''
  number.times do |i|
    if start_num != 0
      i.odd? ? string << '0' : string << '1'
    else
      i.even? ? string << '0' : string << '1'
    end
  end
  string
end

puts stringy(6,0) == '010101'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'