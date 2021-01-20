def friday_13th(year)
  result = 0
  1.upto(12) { |month| result += 1 if Time.local(year, month, 13).friday? }
  result
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
