'''

'''
require 'date'

def friday_13th(year)
  test_date = Date.new(year)
  day = 0
  calendar = []
  friday13th_count = 0
  if Date.gregorian_leap?(year)
    extra_day = 1
  else
    extra_day = 0
  end
    (364 + extra_day).times do
      calendar << test_date + day
      day += 1
    end
  calendar.each do |day|
    if day.friday? && day.day == 13
      friday13th_count += 1
    end
  end
  p friday13th_count
end

# testcases
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2