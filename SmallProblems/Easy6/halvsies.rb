'''
Problem:
-create a nested array of 2 arrays, from the given array. the first nested array contains the first half of the given array, the other nested array contains the other half of the given array
- if the original array contains an odd number of elements, the  middle element should be included in the first nexted array
  
algo:

- create empty array for the return value
- determine the number of elements that go into the nested array
  - if even --> array.size /2
  - if odd, first array array.size / 2 + 1; second array array.size / 2
- create first array from the given array and add the elements to it
- create second array and add the elements from original array to it

'''

def halvsies(list)
  if list.size.even?
    arr1_size = list.size / 2
    arr2_size = list.size / 2
  else
    arr1_size = list.size / 2 + 1
    arr2_size = list.size / 2 
  end
  arr1 = list[0..(arr1_size -1)]
  arr2 = list[arr1_size..(list.size() -1)]
  [arr1, arr2]
end

# examples, testing

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]