'''
number of lines = num
number of max stars = num
number of total elements per line (stars and spaces) = num
first line 1 star
2nd line 3 stars
3rd line 5 stars
... always + 2 per line until max, then decreasing


algo:
- initialize number of stars variable with 1
- initialize number of spaces variable with 1
- line counter variable initialized with 1

- loop num.times
  - print one line each time
    - puts  certain number of spaces + certain number of stars + certain number of spaces (starting with 1 star (n - stars)/2 spaces for each side with n being parameter of method)
    - always + 2 stars per row until max, then - 2 per row until at 1 again
  - increase stars by 2 until stars = n
  - if stars = n reached then decrease stars by 2 until stars = 1 (line number > (n+1)/2)


'''

def diamond(num)
  stars = 1
  line_counter = 0
  vorz = 1
  num.times do
    puts " " * ((num - stars)/2) + "*" * stars + " " * ((num - stars)/2)
    line_counter += 1
    stars = stars + vorz * 2
    if stars == num
      vorz = -1
    end
  end
end

diamond(69)