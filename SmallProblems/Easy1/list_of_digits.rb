'''
input:
  -positive integer
output: 
  -array with all the single digits of that given integer

  1. convert interger input to string
  2. use split function on string
  3. convert string digits in array back to integers

'''

def digit_list(number)
  string_number = number.to_s
  digit_array = string_number.split(//)
  digit_array.map! {|x| x.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5]      => true
puts digit_list(7) == [7]                      => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]  => true
puts digit_list(444) == [4, 4, 4]              => true