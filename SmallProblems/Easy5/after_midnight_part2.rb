'''
edge cases:
00:00
24:00

data:
input: string representing the time in 24 hour format e.g. 12:34
output: integer number in seconds representing the minutes either before or after midnight

algo:

- extract hour and minute information from string
  - numbers at fixed position, so first 2 elements are the hours, and the 4th and 5th are the minutes
-before midnight:
  -hours before midnight = 24 - hours from string - 1 (minus 1 because minutes have to be accounted for)
  -minutes before midnight = 60 - minutes from string
'''



def after_midnight(timestring)
  hours = timestring[0, 2].to_i
  minutes = timestring[3, 2].to_i
  total_minutes = (hours * 60 + minutes)
  if total_minutes != 1440
    total_minutes
  else
    0
  end
end

def before_midnight(timestring)
  hours = 23 - timestring[0, 2].to_i
  minutes = 60 - timestring[3, 2].to_i
  total_minutes = (hours * 60 + minutes)
  if total_minutes != 1440
    total_minutes
  else
    0
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0