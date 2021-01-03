'''

'''

def negative(number)
  if number > 0
    number * -1
  else
    number
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby