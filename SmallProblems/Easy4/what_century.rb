'''
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

  data:
  input: integer 
  output: string

  algorithm:
  - create variable century that countains the century as number.
  -calculate century by dividing century by 100 and adding 1 if year % 100 isnt 0
  -create ending variable string
  - determine ending for century string by % the century by 10. 
  -case 1,2,3 specific ending, for 4-0 th ending
  -return string   
'''

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0

  ending = ''
  case century % 10
  when 1
  ending = "st"
  when 2
  ending = "nd"
  when 3
  ending = "rd"
  else
  ending = "th"
  end
  
  case century % 100
  when 11..13
  ending = 'th'
  end

  return century.to_s + ending
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

#LS Solution:
#def century(year)
#  century = year / 100 + 1
#  century -= 1 if year % 100 == 0
#  century.to_s + century_suffix(century)
#end

#def century_suffix(century)
#  return 'th' if [11, 12, 13].include?(century % 100)
#  last_digit = century % 10

#  case last_digit
#  when 1 then 'st'
#  when 2 then 'nd'
#  when 3 then 'rd'
#  else 'th'
#  end
#end