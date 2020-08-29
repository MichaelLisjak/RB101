'''
problem: 
print all odd numbers from 1 to 99 including 99. All numbers should be printed on seperate lines
data:
array with numbers from 1 to 99?

algorithm
-create array with numbers from 1 to 99
- iterate through array and print number with next line character if number is odd

'''

#(1..99).each {|number| puts "#{number.to_s}" if number % 2 != 0 }

1.upto(99) {|number| puts number.to_s if number.odd?}