'''
- create empty result array
- create two loops, inner and outer loop
- outer loop iterates through first array
- inner loop iterates through second array
  - inner loop multiplies each element of second array with current array of outer loop and saves it to result array
  - sort array and return it
'''

def multiply_all_pairs(arr1, arr2)
results = []
arr1.each do |item1|
  arr2.each do |item2|
    results << item1 * item2
  end
end
results.sort  
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


'''
LS solution
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

'''