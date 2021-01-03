'''
- create index variable 0
- create and endless loop
  - take the first index element and safe it to variabe
  - create a counter variable that counts the occurences of that element in the array
    - iterate through the array and compare every element with that saved number, if it matches iterate occurences variable
    - if occurences variable is 2 or greater --> return that current element
  - set occurences value back to 0
  - increate index variable by 1



'''

def find_dup(arr)
  index = 0
  loop do
    number = arr[index]
    occured = 0
    arr.each do |element|
      if element == number
        occured += 1
      end
      if occured >= 2
        return element
      end 
    end
    occured = 0
    index += 1
  end
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73