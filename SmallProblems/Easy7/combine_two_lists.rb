'''
- loop number of array.size times and and the elements to return array
'''

def interleave(arr1, arr2)
  return_array = []
  index = 0
  until index >= arr1.size do 
    return_array << arr1[index]
    return_array << arr2[index]
    index += 1
  end
  return_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']