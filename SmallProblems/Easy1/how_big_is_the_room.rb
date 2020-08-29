'''
Problem:
enters length and width of a room in meters. Displays the area of the room in square feet and square meters
1 square meter is 10.7639 feet

data:
input: length and width as integer/float?
output: squaremeter and squarefeet in float

algorithm:
-get user input for length in meters
-get user input for width in meters
-calculate squaremeter from input
-calculate squarefeet from squaremeter
-output squaremeter and squarefeet  

'''
SQMETERS_TO_SQFEET = 10.7639

puts "Please enter the length of the room in meters: "
length = gets.to_f
puts "Please enter the width of the room in meters: "
width = gets.chomp.to_f

squaremeters = (length * width).round(2)
squarefeet = (squaremeters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{squaremeters.to_s} square meters (#{squarefeet} square feet)"