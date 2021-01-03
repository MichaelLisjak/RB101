'''
-split string into array with each char equals one array element
-iterate over each char of the array
-if index is even -> upcase, if index is odd -> downcase
- join array together to a string
- return string
'''

def staggered_case(text)
  text_array = text.split('')
  text_array.each_with_index do |char, index|
    if index.even?
      char.upcase!
    elsif index.odd?
      char.downcase!
    end
  end
  text = text_array.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'