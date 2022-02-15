=begin

Write a method that takes one argument, a positive integer, 
and returns the sum of its digits.

=end

def sum (x) 
  num = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  x = x.digits
  x = x.select { |a| num.include?(a)}
  x.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
