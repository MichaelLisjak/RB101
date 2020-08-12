'''
input:
  array of strings
output: 
  print out of the strings(only 1 time) and how often they occured 

 1. create 2nd array with removed duplicats (every string exists only 1 time in the array)
 2. count the elements of the first array, with the elements of the 2nd array as argument e.g. array1.count(array2[i]) in a loop that goes through every element of the 2nd array
  -create a loop that iterates through 2nd arrays elements
  -in each loop-through count the occurrences of the elements in the first array
    -save the element names and counts in a hash table
 3. print out hash table
'''

def count_occurrences(some_array)
  no_duplicates = some_array.uniq
  hash_elements = Hash.new
  no_duplicates.each do |element|
    hash_elements[element] = some_array.count(element.upcase)
  end
  hash_elements.each do |element, count|
    puts "#{element} => #{count}"    
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]


count_occurrences(vehicles)


'''
LS Solution:
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
'''