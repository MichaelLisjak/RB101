'''

'''

def sequence(count, start_num)
  sequence_array = []
  index = 1
  count.times do 
    sequence_array << (start_num * index )
    index += 1
  end
  sequence_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []