'''
algo:
- create an empty hash
- create an array with the words from the string
- use the size method to create an array with each element representing the length of the words called "values"
- create an array with the unique lengths of words called "keys"
- loop through keys array and count the occurences of each element in the values array
  - fill the hash with the key value pairs
'''
def word_sizes(text)

  word_sizes_hash = {}
  text_array = text.split(' ')
  values_array = text_array.map {|word| word.size}
  keys_array = values_array.uniq
  
  keys_array.each do |item|
    word_sizes_hash[item] = values_array.count(item)
  end
  word_sizes_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}