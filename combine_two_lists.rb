def interleave(arr1, arr2)
  final_arr = []
  counter = 0
  loop do
    final_arr << arr1[counter] << arr2[counter]
    counter += 1
    break if counter == arr1.size
  end
  final_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']