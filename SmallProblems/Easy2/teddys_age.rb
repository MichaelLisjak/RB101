
def print_age(name = "Teddy")
  age = rand(20...200)
  puts ("#{name} is #{age.to_s} years old!")
end

print_age("Michael")
print_age()