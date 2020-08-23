'''
Problem:
Take a string with one or many words, an reverse each word which has >= 5 letters
spaces only if more than 1 word in string

input:
- string with one or many words, only letters and whitespaces
output:
- string with one or many words, all words with >= 5 letters reversed

1. seperate words of string into an array
2. if array element length >= 5 reverse element
3. return the same string mutated

'''

def reverse_words(string_of_words)
  array_of_words = string_of_words.split
  array_of_words.map! do |word|
    if word.length >= 5
      word.reverse!
    else
      word
    end
  end
  string_of_words = array_of_words.join(' ')

end

puts reverse_words('Professional') == 'lanoisseforP' => true
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb' => true
puts reverse_words('Launch School') == 'hcnuaL loohcS' => true

'''
LS solution:
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end
'''