'''
input:
  - a string(can be empty)
output:
  - a string with the words from input string in reversed order

  1. convert string into array with every word being an element of the array
  2. reverse the array
  3. join the array elements together to a string
'''

def reverse_sentence(string)
  array = string.split
  array.reverse!
  string = array.join(" ")
end

puts reverse_sentence('') == '' => true
puts reverse_sentence('Hello World') == 'World Hello' => true
puts reverse_sentence('Reverse these words') == 'words these Reverse' => true