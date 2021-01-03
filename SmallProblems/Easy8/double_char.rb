'''

'''
CONSONANTS = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'

def double_consonants(text)
  result = ''
  text.chars.each do |char|
    if CONSONANTS.include?(char)
      result << char
      result << char
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""