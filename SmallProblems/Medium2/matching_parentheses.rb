'''
idea: 
string should be balanced if beginning parentheses is opening and ending parentheses is closing and the number of opening and closing parentheses is equal

- delete all chars from string that are not a parentheses
- if string length is unequal --> false
- if number of opening and closing parentheses are unequal --> false
- if first char is not ( and last char is not ) --> false
else true
'''

def balanced?(text)
  parentheses = text.chars.delete_if {|char| char != '(' && char != ')'}
  if parentheses == []
    return true
  elsif parentheses.length.odd?
    return false
  elsif parentheses.count('(') != parentheses.count(')')
    return false
  elsif parentheses.first != '('
    return false
  elsif parentheses.last != ')'
    return false
  else
    return true
  end
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false