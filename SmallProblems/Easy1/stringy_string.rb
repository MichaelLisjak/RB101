'''
Problem:
return a string of alternating 1s and 0s always starting with 1. The length of the string should match the given integer

input: 
-positive integer
output:
-string of 1s and 0s length == input

Algorithm:
1. start with empty array/string
2. loop integer_input-times over empty array and add 1 or 0 depending on odd or even size of array
3. be happy if it works
addition: 
'''
'''
def stringy(number)
  number_string = ''
  number.times do |element|
    if number_string.length.odd?
      number_string << 
    elsif number_string.length.even?
      number_string << 
    end
  end
  return number_string
end
'''
def stringy(number, starting_number = 1)
  number_string = ''
  number.times do |element|
    if number_string.length.odd?
      if starting_number == 1
        number_string << '0'
      else
        number_string << '1'
      end
    elsif number_string.length.even?
      if starting_number == 1
        number_string << '1'
      else
        number_string << '0'
      end
    end
  end
  return number_string
end

puts stringy(6,0)
puts stringy(9,0) 
puts stringy(4,0) 
puts stringy(7,0)