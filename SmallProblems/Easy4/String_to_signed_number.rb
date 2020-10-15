def string_to_signed_integer(string)
  string_array = string.split('')
  if string_array[0] == '-'
    string_array.delete_at(0)
    -string_to_integer(string_array)
  elsif string_array[0] == '+'
    string_array.delete_at(0)
    string_to_integer(string_array)
  else
    string_to_integer(string_array)
  end
end

def string_to_integer(string_array)
  digits = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
             '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
  integer_array = string_array.map { |d| digits[d] }
  length = integer_array.length
  integer_array_full = integer_array.map.with_index do |d, i|
    d * 10**(length - (i + 1))
  end
  integer_array_full.sum
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

#LS Solution
#def string_to_signed_integer(string)
#  case string[0]
#  when '-' then -string_to_integer(string[1..-1])
#  when '+' then string_to_integer(string[1..-1])
#  else          string_to_integer(string)
#  end
#end
'''
Discussion
In this solution, we opt to reuse the string_to_integer method from the previous exercise. Why waste effort reinventing the wheel? (Oh, wait. That is exactly what we are doing, isnt it?)

This solution is reasonably easy: it simply looks at the first character of string. If the character is a -, the negative of the number represented by the rest of the string is returned. If it is not a -, it returns the value of the rest of the string as a number, skipping over a leading + if present.

Note that we rely on the fact that case returns the value returned by the when (or else) branch selected.

The most interesting aspect of this method is the use of string[1..-1] to obtain the remainder of the string after a leading + or -. This notation simply means to extract the characters starting at index 1 of the string (the second character) and ending with the last character (index -1).

Further Exploration
In our solution, we call string[1..-1] twice, and call string_to_integer three times. This is somewhat repetitive. Refactor our solution so it only makes these two calls once each.
'''