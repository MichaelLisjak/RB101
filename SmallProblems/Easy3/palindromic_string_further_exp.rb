'''
data:
input: string or array
output: boolean

algorithm:
-create empty backward array
-splint input into array so in case of a string, you have an array to work with(check if this affects the array if it is already one)
- determine length of the array
-loop through array.length times and move last index item from forward string to first empty index from backward string
  
'''

def palindrome?(forward)
  backward_array = []
  forward_array = forward.split('')
  p forward_array
end


#puts palindrome?('madam') == true
#puts palindrome?('Madam') == false          # (case matters)
#puts palindrome?("madam i'm adam") == false # (all characters matter)
#puts palindrome?('356653') == true
palindrome?('madam')
palindrome?('Madam')
palindrome?("madam i'm adam")
palindrome?('356653')
#palindrome?([1, 2, 3, 2, 1])