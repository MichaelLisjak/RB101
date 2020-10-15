'''
data:
input: integer number
output: string representing that integer number

algo:
-create hash table for single digits
-convert integer to digit array using .digits
-reverse that array, so the digits are in the right order
-iterate through the array and replace integer digits with string digits using the hash table
-put string digit array together to a string
'''

DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
            5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(int)
  int_array = int.digits.reverse!.map! { |d| DIGITS[d] }
  int_array.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'