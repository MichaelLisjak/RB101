'''
- map method to iterate through array
- iterate through each sub array and transform every element to an array
  - create and empty hash as template
  - use the first element [0] as key and the second element [1] as value and write it into the hash template
  - return the hash template for the 2nd map method
'''

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
hsh = {}

new_hsh =  arr.map do |sub_arr|
  hsh = {sub_arr[0] => sub_arr[1]}

end

p new_hsh


'''
LS Solution:
hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
'''