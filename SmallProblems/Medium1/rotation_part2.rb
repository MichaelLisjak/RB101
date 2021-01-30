'''

'''

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(str)
  rotate_array(str.split(//)).join
end

def rotate_int(num)
  rotate_string(num.to_s)
end

def rotate_rightmost_digits(number, digits)
  arr_num = number.to_s.split(//) # to_s.chars also possible
  (arr_num[0..-(digits+1)] + rotate_array(arr_num[-digits..-1])).join.to_i
end




p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917