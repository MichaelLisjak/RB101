

def swap_name(full_name)
  name_array = full_name.split(' ')
  "#{name_array[1]}, #{name_array[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'