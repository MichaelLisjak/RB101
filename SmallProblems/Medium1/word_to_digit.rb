'''

'''

def word_to_digit(text)
 text.gsub!(/zero/, '0')
 text.gsub!(/one/, '1')
 #text.gsub!('two', '2')
 #text.gsub!('three', '3')
 #text.gsub!('four', '4')
 #text.gsub!('five', '5')
 #text.gsub!('six', '6')
 #text.gsub!('seven', '7')
 #text.gsub!('eight', '8')
 #text.gsub!('nine', '9')
end

#p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p word_to_digit('zero')
p word_to_digit('one')
