'''
- create a second, temporary array
- delete last array from original array and prepend it to temporary array until original array is empty
  - prepend it to temp array with unshift or prepend method
  - remove last element from original array with pop method
- loop through temp array and append all its elements to original array
'''

def reverse_array(list)
  temp_list = []
  loop do 
    temp_list << list.pop
    break if list.size <= 0
  end
  temp_list.each {|i| list.append(i)}
  list 
end
 
# examples and testing

list = [1,2,3,4]
new_list = reverse_array(list)
p new_list
p list.object_id == new_list.object_id

'''
LS solution

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
'''