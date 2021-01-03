'''
- create result value and initialize it with 1
- iterate through array and multiply current element with result and save it in result
- divide result by array size
-use format to format/ round it to 3 decimal places
'''
def show_multiplicative_average(numbers)
  result = 1.0
  numbers.each do |number|
    result = result * number
  end
  format("%.3f",  result = result / numbers.size )
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667