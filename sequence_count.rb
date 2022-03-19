=begin

Create a method that takes two integers as arguments. 
The first argument is a count, and the second is the first 
number of a sequence that your method will create. The method 
should return an Array that contains the same number of elements as 
the count argument, while the values of each element will be 
multiples of the starting number.

You may assume that the count argument will always have a value 
of 0 or greater, while the starting number can be any integer value. 
If the count is 0, an empty list should be returned.

=end

def sequence(num1, num2)
  arr1 = []
  arr2 = []
  return arr2 if num1.zero?
  num1.times do |_|
    arr1 << num2
  end
  loop do
    arr2 << arr1.sum
    arr1.pop
    break if arr1.empty?
  end
  arr2.reverse
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
