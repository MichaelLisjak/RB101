hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, arr|
  arr.each do |word|
    word.each_char do |char|
      if /[aeiou]/.match(char)
        puts char
      end 
    end
  end
end

'''
LS Solution:
'''
#vowels = 'aeiou'
'''
hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

'''