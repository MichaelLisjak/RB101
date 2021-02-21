'''
- create an empty hash with the 3 keys lower-, uppercase and neither in percentage
- create a hash with the NUMBER of lower- uppercase or neither characters, as well as the total length of the text
- determine the length of text for later calculation of the percentages and save it in the hash
- iterate through the text and determine what type of char itis and add it to the hash accordingly


- calculate the percentages and add it to the percentage hash
  - percentage alphanum = num of alphanum / total chars * 100 ...


'''

def letter_percentages(text)
  percentage_hsh = {lowercase: 0, uppercase: 0, neither: 0}
  count_hsh = {lowercase: 0, uppercase: 0, neither: 0, total_chars: 0}

  count_hsh[:total_chars] = text.length

  text.chars.each do |letter|
    if letter =~ /[[:upper:]]/
      count_hsh[:uppercase] += 1
    elsif letter =~ /[[:lower:]]/
      count_hsh[:lowercase] += 1
    else
      count_hsh[:neither] += 1
    end
  end 
  percentage_hsh[:lowercase] = (count_hsh[:lowercase].to_f / count_hsh[:total_chars]) * 100.0
  percentage_hsh[:uppercase] = (count_hsh[:uppercase].to_f / count_hsh[:total_chars]) * 100.0
  percentage_hsh[:neither] = (count_hsh[:neither].to_f / count_hsh[:total_chars]) * 100.0
  percentage_hsh
end

#p letter_percentages('abCdef 123')

# test cases
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }