=begin

The first reversed arrays method is for the part two.
this one reverses and mutates the original array permanently 
but the first one uploaded does not

=end

def reverse!(arr)
  far_right_element = -1
  far_left_element = 0
  loop do
    arr[far_left_element], arr[far_right_element] = arr[far_right_element], arr[far_left_element]
    far_right_element -=1
    far_left_element += 1
    break if far_left_element == arr.size / 2
  end
  arr
end