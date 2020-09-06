'''
problem: ask user for 2 pos. integer numbers and perform and display the result of all basic arithmetic operations
data:
input: 2 positive integer numbers
output:
all 6 basic operations, with text and result

algorithm:
-create variables for both input numbers
-ask user for 1st number
-ask user for 2nd number
-output the results
'''

first = 0
second = 0

puts "Enter the first number:"
first = gets.chomp.to_i
puts "Enter the second number:"
second = gets.chomp.to_i

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{first / second}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} = #{first ** second}"