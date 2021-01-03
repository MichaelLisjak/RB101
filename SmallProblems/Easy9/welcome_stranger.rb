'''

'''

def greetings(name_array, occupation_hash)
  puts "Hello #{name_array.join(' ')}! Nice to have a #{occupation_hash[:title]} #{occupation_hash[:occupation]} around"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })