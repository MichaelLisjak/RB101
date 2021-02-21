'''

'''

def triangle (side1, side2, side3)
  sides = [side1, side2, side3]

  case 
  when sides.include?(0) || sides.sum != 180 
    return :invalid
  when sides.none? {|side| side >= 90}
    return :acute
  when sides.include?(90)
    return :right
  else
    return :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid