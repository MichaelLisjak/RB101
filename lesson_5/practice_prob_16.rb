'''
output: one random UUID of HEX Chars in this structure: 8-4-4-4-12
- create template string for uuid
- create fixed string with each possible char for uuid 0-f
- create one 8 char three 4 char and one 12 char string with these hex chars and add them to the tempplate string
  - loop x times and sample one char from fixed hex string each time and add it to template string
  - add an - to it
  - repeate the x times loop until finished
'''

def create_uuid()
  uuid = []
  hex_string = '0123456789abcdef'

  uuid << hex_string.chars.sample(8)
  uuid << '-'
  uuid << hex_string.chars.sample(4)
  uuid << '-'
  uuid << hex_string.chars.sample(4)
  uuid << '-'
  uuid << hex_string.chars.sample(4)
  uuid << '-'
  uuid << hex_string.chars.sample(12)
  uuid.join
end

p create_uuid()