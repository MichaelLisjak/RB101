'''
  - create new empty array rot_arr
  - iterate through arr starting at index 1 to the end of the array and append the element to rot_arr
  - append arr[0] to rot_arr
  - return rot_arr
'''

def rotate_array(arr)
  rot_arr = []
  index = 1
  while index < arr.size do
    rot_arr << arr[index]
    index += 1
  end
  rot_arr << arr[0]
  rot_arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

'''
LS Solution

def rotate_array(array)
  array[1..-1] + [array[0]]
end
'''

#further exploration
text = 'abcdef'
def rotate_string(str)
  rotate_array(str.split(//)).join
end

p rotate_string(text)

number = 12345

def rotate_int(num)
  rotate_string(num.to_s)
end

p rotate_int(number)