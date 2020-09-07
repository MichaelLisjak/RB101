'''
algorithm:
-create 2 string variables for long and short string
-determine the length of both input strings and save them to the corrosponding string variable
-concatenate them according to problem
'''

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else  
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"