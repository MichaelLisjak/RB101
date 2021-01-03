

def staggered_case(text)
  needs_upper = true
  result = ''
  text.chars.each do |char|
    if needs_upper
      result << char.upcase
    else 
      result << char.downcase
    end
    if char =~ /[a-zA-Z]/
      needs_upper = !needs_upper
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'