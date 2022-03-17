=begin

Write a method that takes two Array arguments in 
which each Array contains a list of numbers, and 
returns a new Array that contains the product of 
every pair of numbers that can be formed between 
the elements of the two Arrays. The results should 
be sorted by increasing value.

You may assume that neither argument is an empty Array.

=end

def multiply_all_pairs(arr1, arr2)
  arr3 = []
  count1 = 0
  loop do 
    count2 = 0
    loop do
      arr3 << arr1[count1] * arr2[count2]
      count2 += 1
      break if count2 == (arr2.size)
    end
    count1 += 1
    break if count1 == arr1.size
  end
  arr3.sort_by do |num|
    num
  end
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]