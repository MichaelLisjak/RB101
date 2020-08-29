'''

'''

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip = (bill * tip_percentage / 100).round(2)
total = (bill + tip).round(2)

#sprintf("The tip is %.2f", tip)
tip = sprintf("%.2f", tip)
puts "The tip is $#{tip}"
total = sprintf("%.2f", total)
puts "The total is $#{total}"