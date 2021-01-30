arr = ['10', '11', '9', '7', '8']

sorted_array = arr.sort_by do |num|
  num.to_i
end

p sorted_array