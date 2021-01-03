'''
- convert integer to string
- dividee string in the middle, and compare both sides
  - if both sides are equal --> convert it back to integer and return it
  - if both sides are not equal --> convert to int, double it and return it

'''

def twice(number)
  str_number = number.to_s
  first_half = str_number[0..((str_number.length / 2) -1)]
  second_half = str_number[(str_number.length / 2)..(str_number.length - 1)]
  
  if first_half == second_half && str_number.size > 1
    number
  else
    number * 2
  end
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

