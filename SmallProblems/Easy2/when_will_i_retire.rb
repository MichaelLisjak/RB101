'''
display when the user will retire (what year)

data:
-current year
input: 
-age as integer
-age to retire as integer
output:
-year to retire as integer
-years to work as integer

algorithm:
-calculate current year
-ask for user age and convert it to integer
-ask for retire age and convert it to integer
-calculate retirement year and how many years the user will have to work untill retirement
-print out current year and what year the user will retire
-print out how many years the user will still have to work

'''
require 'date'

current_year = DateTime.now.year

puts "What is your age?"
age = gets.to_i
puts "What age would you like to retire?"
retire_age = gets.to_i

years_left = retire_age - age
retire_year = current_year + years_left

puts "It's #{current_year.to_s}. You will retire in #{retire_year}."
puts "You only have #{years_left} years of work to go!"
