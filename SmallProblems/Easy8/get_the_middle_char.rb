'''
- middle char:
  odd length --> integer div. by 2
  even length --> int division and int div. + 1
'''

def center_of(text)
  middle = (text.length / 2)
  if text.length.odd?
    text[middle]
  else
    text[(middle - 1)..middle]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'