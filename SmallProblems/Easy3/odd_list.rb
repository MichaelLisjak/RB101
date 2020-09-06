'''
Problem:
write a method, that takes an array as an argument, and return an array containing every other element, 1st, 3rd 5th and so on. (even numbered indexes of the array!)

data:
input: array 
output: array

algorithm:
-create empty array for return value
-go through array that has been passed as an argument and write every element with an even index number into the return value array

'''

def oddities(input_array)
  odd_array = []

  odd_array = input_array.select.with_index {|num, ind| ind.even?} 
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []