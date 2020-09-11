DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def signed_integer_to_string(int)
  if int < 0
    int = int.abs
    int_array = int.digits.reverse!.map! { |d| DIGITS[d] }
    int_array.unshift('-')
    int_array.join
  elsif int == 0
    '0'
  else
    int_array = int.digits.reverse!.map! { |d| DIGITS[d] }
    int_array.unshift('+')
    int_array.join
  end
  #p int_array.join
#int_array = int.digits.reverse!.map! { |d| DIGITS[d] }
#int_array.join
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
'''
-if number negative, create absolut value of it, and prepend a minus to the string
-if number 0 do not append anything
- else append + to the string
'''