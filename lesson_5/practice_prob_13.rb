arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# expected: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

sorted_array = arr.sort_by do |sub_arr|
  sub_arr.map do |num| # mit select wäre besser, da spart man sich das if
    if num.odd?
      num
    end
  end
end

p sorted_array