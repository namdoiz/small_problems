=begin

Write a method that takes one argument, 
a positive integer, and returns a string of 
alternating 1s and 0s, always starting with 1. 
The length of the string should match the given 
integer.

=end

def stringy(x)
  arr = []
  str = ''
  counter = 0
  x.times do |b|
    arr << b 
  end
  loop do
    if arr[counter].even?
      str << '1'
      counter += 1
      break if counter == arr.size
    else
      str << '0'
      counter += 1
      break if counter == arr.size
    end
  end
  str
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'