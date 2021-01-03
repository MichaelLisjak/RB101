'''

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

def substrings(text)
  result = []
  total =  []
  index = 0
  text.size.times do
    result = leading_substrings(text[index..text.size])
    total << result
    index += 1
  end
  total.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]