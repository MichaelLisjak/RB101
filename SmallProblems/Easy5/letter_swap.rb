'''
edge_cases: one letter words?
data: 
input: string with words, separated by whitespaces
output: string with words, first, and last letter swapped

algo:

-split string into array with words of type string
-itereate through array and swap first and last letter of each words
-join the words from array together to a string
'''

def swap(text)
  first_letter = ''
  last_letter = ''
  text_array = text.split.each do |word|
  first_letter = word[0]
  last_letter = word[word.length - 1]
  word[0] = last_letter
  word[word.length - 1] = first_letter 
  end
  text_array.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

#tip: word[word.length - 1] is the same as word[-1]
#einfachere version um die buchstaben zu tauschen
'''
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end
'''