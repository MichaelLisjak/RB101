'''
Problem: write a xor method.
data:
input: 2 arguments, both boolean
output: 1 boolean

algorithm:
4 cases, each with it s own output

'''

def xor?(bool1, bool2)
  barray = [bool1, bool2]
  case barray
  when [false, false]
    return false
  when [false, true]
    return true
  when [true, false]
    return true
  when [true, true]
    return false    
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false