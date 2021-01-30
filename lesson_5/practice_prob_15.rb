arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_arr = arr.map do |hsh|
  #if hsh.values.all?(even?)
  hsh.values.map do |value_arr|
    if value_arr.all? {|num| num.even?}
      value_arr
    end
  end
  
  
end

p even_arr


'''
hsh.values.select do |value_arr|
  value_arr.all? {|num| num.even?}

'''