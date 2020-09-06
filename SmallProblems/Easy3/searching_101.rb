'''
Problem:
ask for 6 numbers from the user, one after the other, and tell him if the 6th number was among the first 5 he entered

data: 
input: 6 integer values. first 5 stored in an array
output: string that tells the user if the 6th number was among the first 5

algorithm
-create empty array for first 5 input numbers
-create integer variable for 6th choice
- create loop that asks for user input number 5 times
-ask a 6th time for a number
-check if 6th number is included in array
-tell the user whether the number is included or not in the array

'''


numbers = []
last_number = 0

5.times do |i|
  if (i + 1) == 1
  puts "Enter the #{i+1}st number:"
  elsif (i + 1) ==2
  puts "Enter the #{i+1}nd number:"
  elsif (i + 1) ==3
  puts "Enter the #{i+1}rd number:"
  else
    puts "Enter the #{i+1}th number:"
  end
  numbers << gets.chomp.to_i
end

puts "Enter the last number:"
last_number = gets.chomp

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}"
else
  puts "The number #{last_number} does not appear in #{numbers}"
end