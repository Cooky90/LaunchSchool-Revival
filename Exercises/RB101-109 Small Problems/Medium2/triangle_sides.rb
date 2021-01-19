def valid_triangle?(side1, side2, side3)
  sides = [side1, side2, side3].sort.reverse
  longest_side = sides[0]
  shortest_sides = sides.slice(1..2)
  return true if (longest_side < shortest_sides.sum) && (!sides.include?(0))
  false
end


def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  case
  when !valid_triangle?(side1, side2, side3)
    return :invalid
  when sides.uniq.size == 1
    return :equilateral
  when sides.uniq.size == 2
    return :isosceles
  when sides.uniq.size == 3
    return :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
