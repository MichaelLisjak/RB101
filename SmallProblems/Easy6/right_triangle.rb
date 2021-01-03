'''
- loop num times and print out a line each time
  - the line should should consist of num elements always
  - an index starting by 1 and incrementing by one each iteration should be the amount of *
  - whitespace num - index times should come before the *
  - string: whitespace times num - index + index times *
'''

def triangle(num)
  index = 1
  num.times do
    puts ' ' * (num - index) + '*' * index 
    index += 1
  end
end

triangle(5)
triangle(9)