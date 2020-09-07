'''
convert a given string number into the integer number without using build-in conversion methods
data:
input: string defining a number
output: integer

algorithm:
-create a hash with all the string->integer digit pairs
-split integer string into an array with each element representing a digit of the number as a string
-create an array with the integer representation of the digit from the hash
-add the digits together with 1st element digit1 * 10**length-1, digit2 * 10**length-2...
  -iterate through each element and apply the calculation to each element and save the values in new array (map)
  - sum up new array values
-return sum
'''

def string_to_integer(string)
  digits = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
  string_array = string.split('')
  integer_array = string_array.map {|d| digits[d] }
  length = integer_array.length
  integer_array_full = integer_array.map.with_index do |d, i|
    d * 10**(length-(i+1))
  end
  integer_array_full.sum
end


p string_to_integer('123') == 123
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
