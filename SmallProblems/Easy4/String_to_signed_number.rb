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
