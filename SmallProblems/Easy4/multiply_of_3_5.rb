'''
problem: take an integer greater 1 and search for all multiples of 3 and 5 in that integer. sum all those multiples up and return that value

data:
input: integer > 1
output: integer

algorithm:

-find all multiples of 3 and 5 in that integer and save it to an array
  -loop through the number from 1 until i*3 and i*5 are greater integer
    -if i * 3 <= integer, write it in array
    -if i * 5 <= integer, write it in array
-sum up all array elements and return them

'''
'''
def multisum(num)
  i = 1
  multiple_array = []
  while (i * 3) <= num
    multiple_array << (i * 3)
    i += 1
  end
  i = 1
  while (i * 5) <= num
    multiple_array << (i * 5)
    i += 1
  end
  p multiple_array
  multiple_array.sum
end
'''
def multisum(num)
  i = 1
  multiple_array = []
  while i <= num
    if i % 3 == 0
      multiple_array << i
    elsif i % 5 == 0
      multiple_array << i
    end
    i += 1
  end
  p multiple_array
  multiple_array.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
#p multisum(1000) 