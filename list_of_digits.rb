=begin

Write a method that takes one argument, 
a positive integer, and returns 
a list of the digits in the number.

=end

def digit_list(x)
  arr = []
  x = x.to_s
  counter = 0
  stop = x.size
  loop do 
    arr << x[counter].to_i
    counter += 1
    stop -= 1
    break if stop == 0
  end
  arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]    
puts digit_list(7) == [7]                    
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]  
