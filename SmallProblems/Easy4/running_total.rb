'''
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

data:
input: array with integer numbers
output: array with integer numbers

algorithm
-create empty array for running total
-create variable for current sum
-interate through given array, and add current item to sum variable
-add that sum variable to running total array
-return running total array

'''

def running_total(arr)
  running_array = []
  current_sum = 0
  arr.each do |num|
    current_sum += num
    running_array << current_sum
  end
  running_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []