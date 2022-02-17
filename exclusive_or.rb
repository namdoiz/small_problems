=begin

In this exercise, you will write a function 
named xor that takes two arguments, and returns 
true if exactly one of its arguments is truthy, 
false otherwise. Note that we are looking for a 
boolean result instead of a truthy/falsy value 
as returned by || and &&.

=end

def xor?(x,y)
  if x && !y
    true
  elsif y && !x
    true
  else
    false
  end
end
p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false