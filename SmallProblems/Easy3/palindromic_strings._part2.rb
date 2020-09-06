'''
algorithm:
- convert given string to array
-create empty array called backward
- delete every element of array if it is not a-z or A-Z
- reverse array and send it to backward array
-check if both arrays are equal

'''

def real_palindrome?(forward)
  backward_array = []
  forward_array = forward.downcase.split('')
  forward_array.select! {|c| c =~ /[[:alpha:]]/ }
  backward_array = forward_array.reverse
  forward_array == backward_array
end



puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
