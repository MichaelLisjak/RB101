'''
- initialize boolean array size n and initialize every element with false
- create index for iteration
- loop n times
  - loop through array and switch every element position with modulo index == 0
  - increment index by 1
'''


def switch_lights(n)
  switches = []
  switch_number = []
  n.times {switches << false}
  index = 1
  counter = 1
  n.times do
    switches.map! do |switch|
      if (counter % index) == 0
        switch = !switch
      end
      counter += 1
      switch
    end
    index += 1
    counter = 1
  end
  switches.each_index do |index|
    if switches[index] == true
      switch_number << index + 1
    end
  end
  switch_number
end

p switch_lights(5)
p switch_lights(10)
p switch_lights(1000)
