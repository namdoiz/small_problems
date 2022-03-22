=begin
Write a method that can rotate the last n digits of a number. For example:

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end

def rotate_rightmost_digits(arr, num)
  arr1 = arr.digits.reverse[0..(-num - 1)]
  arr2 = arr.digits.reverse[-num..-1]
  arr2 << arr2[0]
  arr2.shift
  (arr1 + arr2).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917