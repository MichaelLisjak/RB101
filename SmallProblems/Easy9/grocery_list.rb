'''
- create empty array
- iterate through the outer array with each
  - write the first item (fruitname, index 0 ) second-item-times into the array
'''

def buy_fruit(list)
  single_item_list = []
  list.each do |item|
    item[1].times do
      single_item_list << item[0]
    end
  end
  single_item_list 
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]