'''

'''

def remove_vowels(text)
  no_vowels = text.each do |word|
    word.gsub!(/[aeiouAEIOU]/, '')
  end
  no_vowels
end

# testing
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

