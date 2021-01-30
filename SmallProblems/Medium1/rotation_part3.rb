'''
- determine length of number in digits
'''

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  arr_num = number.to_s.split(//) # to_s.chars also possible
  (arr_num[0..-(digits+1)] + rotate_array(arr_num[-digits..-1])).join.to_i
end

def max_rotation(number)
  num_of_rotations = number.to_s.length # get length of number
  index = num_of_rotations
  num_of_rotations.times do
    number = rotate_rightmost_digits(number, index)
    index -= 1
  end
  number
end

p max_rotation(12345)

#p rotate_array([1,2,3])

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
