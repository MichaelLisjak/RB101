puts "Please write word or multiple words:"
text = gets.chomp

count = 0

text.split('').each do |c|
  if c != ' '
    count += 1
  end
end

puts "There are #{count} characters in \"#{text}\""

