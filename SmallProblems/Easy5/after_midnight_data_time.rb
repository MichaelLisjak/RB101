#p Time.utc(2020)
#p Time.utc(2020)
#Time.at(86400)


'''
- create base time at some year in the middle between 1970 and 2020 (1995)
- 
-


'''

def time_of_day(minutes)
  base_time = Time.utc(1995)
  utc_plus1_offset = -3600
  base_time += (minutes * 60)
  minute = base_time.min
  hour = base_time.hour

  format('%02d:%02d', hour, minute )

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





