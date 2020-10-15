'''
- replace all non-ascii elements with whitespace
- use squeeze method to reduce multiple whitespaces with a single one
'''

def cleanup(text)

  text_array = text.split('').map! do |c|
    if !/[[:alpha:]]/.match(c)
      c = ' '
    else
      c
    end
  end
  text_array.join.squeeze
end

p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '