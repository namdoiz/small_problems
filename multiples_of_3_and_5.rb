def multisum(num)
  initial_range = (1..num).to_a
  initial_range = initial_range.select do |x|
    x % 3 == 0 || x % 5 == 0
  end
  initial_range.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168