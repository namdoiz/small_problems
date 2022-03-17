=begin

Write a method that takes two Array arguments 
in which each Array contains a list of numbers, 
and returns a new Array that contains the product 
of each pair of numbers from the arguments that 
have the same index. You may assume that the 
arguments contain the same number of elements.

=end

def multiply_list(arr1, arr2)
  arr3 = []
  counter = 0
  loop do
    arr3 << arr1[counter] * arr2[counter]
    counter += 1
    break if counter == arr1.size
  end
  arr3
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]