arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

incr_arr = arr.map do |hsh|
  hsh.map {|_, value| [_, value += 1]}.to_h
end

p incr_arr