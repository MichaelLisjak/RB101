'''
- create char array from string
- iterate over array
  - if the subsequent char is the same as the current char, delete it
    - if a char was duplicate and has been deleted, start from the beginning of the array
    - if delete_at returns nil, end of array has been reached and all duplicates have been removed. 
    - join array together to a string
    - return string

'''

def crunch(text)
  text_array = text.split('')
  counter = 0
  loop do
    if text_array[counter] == text_array[counter + 1] && text_array[counter + 1] != nil
      text_array.delete_at(counter + 1)
    else 
      counter += 1
      break if counter >= text_array.size
      p counter
    end
  end
  text_array.join  
end

#testing
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
test = []
p test[0]
p test[1]
