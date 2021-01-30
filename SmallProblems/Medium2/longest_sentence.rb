'''
Problem:
- read a textfile a print the longest sentence and the number of words in it. 
- sentence end with . ! or ?
- everything not a space or sentence ending chars counts as a word

input: Textfile
output: String (longest sentence + number of words)

algo:
- read textfile and save it into a string
- create a sentence string variable
- create a word count variable and initialize it with 0
- split the string into sentences and save them in an array of sentences
- iterate through array with sentences
  - iterate through each sentence and count the words.
    - If the sentence has a higher word count, 
      - save the sentence and the word count in a variable.
- print out sentence and word count variable
 


'''

txt_file = File.read('F:\LS\RB101\SmallProblems\Medium2\longest_sentence.txt').gsub!(/\n/, ' ')
#p txt_file
longest_sentence = ''
word_count = 0

sentences = txt_file.split(/\.|\?|!/)
sentences.each do |sentence|
  if sentence.split(' ').count > word_count
    word_count = sentence.split.count
    longest_sentence = sentence
  end  
end


p longest_sentence
p "is #{word_count} words long"

