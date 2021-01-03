'''
- create empty  result array
- iterate over string string.size-times 
  - prepend string to result array
  - chop last element of string off
- return array  
'''

def leading_substrings(text)
  result = []
  index = 0
  text.size.times do
    result << text[0..index]
    index += 1  
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']