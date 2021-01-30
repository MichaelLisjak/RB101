'''
- create an array with the first 2 elements of the fibonacci sequence as starting point
- calculate the next number of the fibonacci sequence and add it to the array
- convert last element in the array to string and determine its length
  - if the length equals the number given as a parameter, stop and return the index of the last element of the array
  - if length is smaller as given parameter, continue

'''

def find_fibonacci_index_by_length(num_length)
  fibonacci_sequence = [1, 1]
  index = 2
  while fibonacci_sequence.last.to_s.length < num_length do
    fibonacci_sequence.append(fibonacci_sequence[index - 2] + fibonacci_sequence[index - 1] )
    index += 1
  end
  fibonacci_sequence.size
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847


'''
2nd attempt

def find_fibonacci_index_by_length(digits)
  fibonacci = [1, 1]
  while fibonacci.last.to_s.length != digits do
    fibonacci << (fibonacci[-1] + fibonacci[-2])
  end
  fibonacci.size
end

'''