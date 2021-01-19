def valid_triangle?(side1, side2, side3)
  sides = [side1, side2, side3]
  return true if sides.sum == 180 && (!sides.include?(0))
  false
end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  case
  when !valid_triangle?(side1, side2, side3)
    return :invalid
  when sides.include?(90)
    return :right
  when sides.count {|side| side > 90} > 0
    return :obtuse
  when sides.count {|side| side < 90} == 3
    return :acute
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid