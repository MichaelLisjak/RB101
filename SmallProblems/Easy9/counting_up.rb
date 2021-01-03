'''

'''

def sequence(number)
 current_num = 1
 num_array = []
 number.times do
   num_array << current_num
   current_num += 1
 end
 num_array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

