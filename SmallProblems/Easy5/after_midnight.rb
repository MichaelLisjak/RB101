'''
Problem:
-method should take a pos or neg integer and calculate the time in those minutes before(neg. integer) or after(pos. integer) midnight
-time should be a string in 24 hr format "00:00"
-should work with any integer input, even more than 1 day (1440 minutes)
data:
input: integer pos. or negative
output: string with time in 24 hr format

algorithm:
-create 2 variables, one for minute and one for hour and set them to zero
(-create empty string for the time)
-reduce the minutes down to max 1339 (1 day- 1 minute) by modulo 1440
-calculate the hours and minutes from the reduced minutes
  -hours is minutes devided by 60 (whole integer division)
  -string hour is hours.to_s
  -minutes is minutes given as parameter modulo 60
  -string minutes is minutes.to_s
-if number is negative: 
  -string hour is 24 minus (hour + 1)
  -string minute is 60 minus minutes
- build the return string of string hour and string minute with a : in the middle
'''


def time_of_day(integer_minutes)
  hours = 0
  minutes = 0
  negative = false
  if integer_minutes < 0
    negative = true
  else
    negative = false
  end
  integer_minutes = (integer_minutes.abs) % 1440
  
  hours = integer_minutes / 60
  minutes = integer_minutes % 60
  
  if negative == false
    sprintf("%2.2i", hours) + ":" + sprintf("%2.2i", minutes) 
  else
    sprintf("%2.2i", (24 - (hours + 1)) ) + ":" + sprintf("%2.2i", (60 - minutes))
  end
end


# Test cases
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)



#LS Solution

#MINUTES_PER_HOUR = 60
#HOURS_PER_DAY = 24
#MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

#def time_of_day(delta_minutes)
#  delta_minutes =  delta_minutes % MINUTES_PER_DAY
#  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#  format('%02d:%02d', hours, minutes)
#end
