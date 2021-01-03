'''
- push arr2 into arr1
- use uniq! method to remove duplicates
'''

def merge(arr1, arr2)
  full_array = arr1 + arr2
  full_array.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]