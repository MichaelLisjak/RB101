'''
- loop from 1st to last number and fill and array with these numbers
- iterate through that array and replace numbers divisible by 3 with fizz and number divisible by 5 with buzz and divisible by 3 and 5 with fizzbuzz
  - if either of these cases is true, delete the element as a first step, then add fizz and/or buzz to the element
    - element = ''
    - element << fizz
    - element << buzz
'''
require "pry"

def fizzbuzz(starting_number, ending_number )
  numbers = []
  number = starting_number
  starting_number.upto(ending_number) do
    numbers << number
    number += 1
  end
  numbers.map! do |num|
    if num % 3 == 0 && num % 5 == 0
      num = "Fizzbuzz"
    elsif num % 3 == 0
      num = "Fizz"
    elsif num % 5 == 0
      num = "Buzz"
    else
      num
    end
  end
  p numbers
end
fizzbuzz(1, 15)