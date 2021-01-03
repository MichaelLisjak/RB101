def crunch(text)
  crunched_text = ''
  index = 0
  text.each_char do |c|
    if crunched_text[index -1] != c 
      crunched_text << c
      #p crunched_text
      index += 1
    end
  end 
  crunched_text
end



#testing
p crunch('ddaaiillyy ddoouubbllee') == "daily double"
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''