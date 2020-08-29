'''
Problem: 
Take a positive integer and sum up all the single digits of that integer and return it

data:
-sum
-input integer
input:
positive integer
output:
positive integer (sum of the single digits of the input)

algorithm:
-declare sum variable
-convert integer to string
-split string into array, each containing a single digit as string
-convert the string array to an integer array
-sum up all elements of that array and save it in sum variable

'''

def sum(number)
  total = 0
  number.to_s.chars.each do |digit|
    total += Integer(digit)
  end
  return total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

'''
Alternative LS solution:

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end
'''