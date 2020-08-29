'''
Problem:
user enters a name and gets greeting. If user enters name with ! at the end, answer gets screamed back (capital letters)

data:
-username as string

algorithm
-ask user for name
-get username
-check if username ends with !
- if it doesnt end with ! write  normal greeting
- if it ends with ! scream greeting back

'''

puts "What is your name?"
name = gets.chomp

if name.end_with?("!")

  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end