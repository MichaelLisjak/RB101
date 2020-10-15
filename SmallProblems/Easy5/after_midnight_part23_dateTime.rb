def time_of_day(minutes)
  base_time = Time.utc(1995)
  utc_plus1_offset = -3600
  base_time += (minutes * 60)
  minute = base_time.min
  hour = base_time.hour

  format('%02d:%02d', hour, minute )

end

