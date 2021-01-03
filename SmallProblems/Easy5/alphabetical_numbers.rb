'''
- create hash with numbers as int for key, and numbers as text for value
- create array with the written numbers corresponding the numbers from given array
- sort this array using the sort method
- iterate through array and replace the written numbers by their corresponding integer number using the hash as reference
  - 
- return this array
'''
NUMBERS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }
NUMBERS_ALPHA = { 'zero' => 0 , 'one' => 1 , 'two' => 2 , 'three' => 3 , 'four' => 4 , 'five' => 5 , 'six' => 6 , 'seven' => 7 , 'eight' => 8 , 'nine' => 9 , 'ten' => 10 , 'eleven' => 11 , 'twelve' => 12 , 'thirteen' => 13 , 'fourteen' => 14 , 'fifteen' => 15 , 'sixteen' => 16 , 'seventeen' => 17 , 'eighteen' => 18 , 'nineteen' => 19  }
def alphabetic_number_sort(numbers)
  alpha_num = numbers.map {|num| NUMBERS[num]}
  alpha_num.sort!
  numbers = alpha_num.map {|num| NUMBERS_ALPHA[num]}
  p numbers  
end




# Testing

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

''' Launch School Solution
NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
numbers.sort_by { |number| NUMBER_WORDS[number] }
end


'''