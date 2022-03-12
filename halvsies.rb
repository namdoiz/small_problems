def halvsies(arr1)
  if arr1.size.even?
    arr2 = []
    arr2 << arr1.slice!(0..((arr1.size / 2) - 1))
    arr2 << arr1
  else
    arr2 = []
    arr2 << arr1.slice!(0..(arr1.size / 2))
    arr2 << arr1
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
