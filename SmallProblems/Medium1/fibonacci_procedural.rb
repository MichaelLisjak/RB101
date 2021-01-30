'''
- create array, initialized with [1, 1]
- iterate nth times and 
  - push another number into array that is the sum of the previous both numbers (indicies)
- output last number

'''

def fibonacci(nth)
  fibo_numbers = [1, 1]
  index = 2
  (nth - 2).times do
    fibo_numbers.push(fibo_numbers[index - 2] + fibo_numbers[index - 1])
    index += 1
  end
  fibo_numbers.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

