'''
- create empty result array
- create index variable
- iterate through first array with value and index, multiply with value from second array of the same index, and save it in result array with same index
- return result array
'''

def multiply_list(arr1, arr2)
  results = []
  arr1.each_with_index do |value, index|
    results[index] = value * arr2[index]
  end
  results
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]