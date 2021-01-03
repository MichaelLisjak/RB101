'''
- delete all non-alphabetic characters
- iterate through every char and check if its uppercase
  - is char.upcase == char? --> uppercase, else lowercase
'''

def uppercase?(text)
  new_text = text.chars.keep_if { |char| char.match(/^[a-zA-Z]/)}
  new_text.each do |char|
    if char != char.upcase
      return false
    end
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


'''
LS Solution

def uppercase?(string)
  string == string.upcase
end



'''