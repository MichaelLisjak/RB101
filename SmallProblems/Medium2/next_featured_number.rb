'''
- find the number highter than the one entered, that is:
      - a multiple of 7
      - odd
      - higher than the number from the method argument
      - whose digits occur only once

- algo:
- iterate from number+1 .. 9_999_999_999
  - if the number mod 7 == 0 and odd? == true
      -> transform number to string, split it into an array and check is that array has only unique elements (array == array.uniq)
      - if only unique digits, break and return that number
      - else continue the loop
'''

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0
  loop do
    if number.to_s.chars == number.to_s.chars.uniq
      return number
    else
      number += 14
    end
  end
end

# test cases

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

#featured(9_999_999_999) # -> There is no possible number that fulfills those requirements