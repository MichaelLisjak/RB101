'''
Problem:
calculate 50% Bonus of salary of 2nd argument is true, return 0 otherwise

data:
input: positive integer, boolean
output: positive integer

if boolean true, return 0.5+ salary, else return 0
'''

def calculate_bonus(salary, bonus)
  if bonus
    return 0.5 * salary
  else
    return 0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
