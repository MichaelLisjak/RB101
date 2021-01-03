def penultimate(text)
  text_array = text.split(' ')
  text_array[-2]
end


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'