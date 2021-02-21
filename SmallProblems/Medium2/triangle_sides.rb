'''
- check if triangle is valid
  - no side is zero
  - sum of sides > longest side *2
  

'''


def triangle(side1, side2, side3)
  triangle_array = [side1, side2, side3]
  if triangle_array.sum <= (triangle_array.max * 2) || triangle_array.include?(0)
    return :invalid
  elsif side1 == side2 && side2 == side3
    return :equilateral
  elsif side1 == side2 || side2 == side3 || side1 == side3
    return :isosceles
  else
    return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid