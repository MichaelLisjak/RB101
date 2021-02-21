'''
- outer loop
- have two variables for first_index and second_index item starting with values of 0 and 1
- have an exchange variable initialized with false
- iterate through array with swapping the 2 elements of the 2 index variables until second variable == array.size
  - if second element is smaller than first element, swap them and set exchange variable to true
  - increment those two index items by one after each iteration of array
- if exchange variable false return array, else set first and second index variable and exchange variable back to default and continue

'''
require 'pry'

def bubble_sort!(array)
  loop do
    first_index = 0
    second_index = 1
    exchange = false
    until second_index >= array.size
      if array[first_index] > array[second_index]  
        array[first_index], array[second_index] = array[second_index], array[first_index]
        exchange = true
      end
      first_index += 1
      second_index += 1
    end
  break if !exchange
  end
  array
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)