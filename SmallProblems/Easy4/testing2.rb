a = 5
p "a object_id: #{a.object_id}"
def change_a(num)
  p "num object_id before reassignment: #{num.object_id}"
  num = 3
  p "num object_id after reassignment: #{num.object_id}"
  num
end

b = change_a(a)
p "a object_id after method: #{a.object_id}"
p "b object_id after method: #{b.object_id}"