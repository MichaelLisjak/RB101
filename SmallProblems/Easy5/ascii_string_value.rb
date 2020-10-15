

def ascii_value(string)
  sum = 0
  string.each_char {|c| sum += c.ord}
  sum
end

p ascii_value('Hello')
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

char = 'abc'
p char.ord
p char.ord.chr