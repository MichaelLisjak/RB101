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

def palindromes(text)
  text_array = substrings(text)
  text_array.delete_if {|word| ((word != word.reverse) || (word.size == 1))}
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]