'''
- iterate from 1 to given number
  - add all the numbers together for sum_square
  - square all the numbers and add them to square_sum
- square the sum_square variable
- calculate the difference and return it 
'''


def sum_square_difference(number)
  num_arr = []
  1.upto(number) { |num| num_arr << num }
  num_arr.inject(:+)**2 - num_arr.inject { |sum, n| sum + n**2}
end

# testing

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150