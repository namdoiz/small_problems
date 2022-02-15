=begin

Write a method that takes two arguments, 
a positive integer and a boolean, and calculates 
the bonus for a given salary. If the boolean is 
true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.

=end

def calculate_bonus(x,y)
  bonus = 0
  if y == true
    bonus += x / 2
  else
    bonus
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
