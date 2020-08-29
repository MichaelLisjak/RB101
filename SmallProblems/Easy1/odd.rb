'''
input:
  -Integer neg. pos. or zero

output:
  -true if abs. value of input is odd
  -false otherwise

  1. determine absolute value of input number
  2. check if number is devisible by 2 without remainder
'''

def is_odd?(number)
  if number.abs % 2 != 0
    return true
  else
    return false
  end
end

puts is_odd?(-0) => false
puts is_odd?(-123) => true
puts is_odd?(600) => false
puts is_odd?(1) => true
