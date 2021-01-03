'''

'''

def swapcase(text)
  swapped_text = ''
  text.each_char do |char|
    if char =~ /[a-z]/
      swapped_text << char.upcase
    elsif char =~ /[A-Z]/
      swapped_text << char.downcase
    else
      swapped_text << char
    end
  end
  swapped_text
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'