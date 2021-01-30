'''
Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.
fruits -> colours, capitalized
vegetables -> size, uppercase

input: hash with sub hashes
output: array

algo:
- create an empty temp array
- iterate through hash with map method to return a new array
- select the required information and put it into the temp array

'''


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}


arr = hsh.map do |sub_hsh|
  if sub_hsh[1][:type] == 'fruit'
    sub_hsh[1][:colors].map {|color| color.capitalize}
  else
    sub_hsh[1][:size].upcase
  end
end

p arr