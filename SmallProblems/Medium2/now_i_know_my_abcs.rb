'''

- create array with sub arrays of each two letter block


checken ob buchstabe vorhanden, wenn ja, sub array löschen und beim nächsten buchstaben beim nächsten durchlauf checken etc bis ende erreicht
initialize the return value as true
- iterate through the word letter by letter
  - if the letter exists as a letter in one of the blocks of the available letter array, then delete that block
  - if the letter is not available in one of the blocks of the available letter blocks in the array, set return value to false and exit the iteration
- return returnvalue
'''
require 'pry'


def block_word?(word)
  available_letters = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']] #%w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  count = 0
  word.chars.each do |letter|
    available_letters.each_with_index do |pair, index|
      if pair.include?(letter.upcase)
        available_letters.delete_at(index)
        count += 1
        break
      end
    end
  end
  if count == word.size
  return true
  else 
  return false
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true