'''
calculate the average of an array full of positive integers. Return integer and use integer division for the result. No empty arrays#

input:
-array of positive integers
output:
-positive integer 

algorithm:
-sum up all the integers in the arraay
-perform integer division on the sum with the number of elements in the array
-return that value
'''

def average(array_of_numbers)
  sum = 0
  array_of_numbers.each {|number| sum += number}
  return sum / array_of_numbers.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40