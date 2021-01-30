


def fibonacci(nth)
  fibo_numbers = [1, 1]
  index = 2
  (nth - 2).times do
    fibo_numbers.push(fibo_numbers[index - 2] + fibo_numbers[index - 1])
    index += 1
  end
  fibo_numbers.last
end

def fibonacci_last(nth)
  #p fibonacci(nth).to_s
  fibonacci(nth).to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
#p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
#p fibonacci_last(123456789) # -> 4