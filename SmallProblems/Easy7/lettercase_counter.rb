'''
- transform string to array with one character for each index
-create empty hash with keys for lowercase, uppercase, and neither and initialize their values with 0
- use count function with a block to count the elements comparing to a regexp for:
  -uppercase, lowercase and other (3 count methods)
  -add the results of count method to the appropriate hash key
'''

def letter_case_count(text)
  results = {}
  results[:lowercase] = text.split('').count {|c| c.match(/[[:lower:]]/)}
  results[:uppercase] = text.split('').count {|c| c.match(/[[:upper:]]/)}
  results[:neither] = text.split('').count {|c| c.match(/[^[:alpha:]]/)}
  results
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }