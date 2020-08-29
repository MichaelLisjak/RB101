'''
Problem: 
ask for input of integer greater 0. then ask if user wants product or sum of all numbers between 1 and entered integer. print out the calculated value

data:
-user input positive integer
-desired calculation as string (p for product, s for sum)
-calculated result

algorithm:
-ask for positive integer greater than 0 and convert it to interger
-ask for s or p for calculation
-calculate the result
  -iterate through 1 to entered integer and sum up or multiply the integers
-output the result

'''

puts "Please enter an integer greater than 0:"
input_number = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product"
operation = gets.chomp
result = 0
if operation == 's'
  (1..input_number).each {|i| result = result + i}
  puts "The sum of the integers between 1 and #{input_number.to_s} is #{result.to_s}"
elsif operation == 'p'
  result = 1
  (1..input_number).each {|i| result = result * i}
  puts "The product of the integers between 1 and #{input_number.to_s} is #{result.to_s}"
end





