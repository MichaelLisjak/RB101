text = "What's up doc?"
text = text.split(' ')
text.map! {|word| word.gsub(/[^[:alpha:]]/, '') }
text.join
#text.split.gsub!(/[^[:alpha:]]/, '').join
p text 