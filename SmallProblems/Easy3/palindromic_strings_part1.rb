'''
Problem: method should return true if the string passed is a palindrome, false otherwise. case, punctuation and spaces matter.
  data:
  input: string
  output: boolean

  algorithm:
  -create empty array for backward string
  -take the original string and write the backward version of it into backward string
  -compare backward string with original string
  -return true if equal, false otherwise
'''

def palindrome?(string)
  backward_string = string.reverse
  if backward_string == string
    return true
  else
    return false
  end
end


puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([1, 2 ,3, 2, 1]) == true