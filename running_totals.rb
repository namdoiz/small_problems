def running_total(arr1)
  if arr1.size == 1 || arr1.size == 0
    arr1
  else
    arr3 = []
    loop do
      arr3 << arr1.sum
      arr1.pop
      break if arr1.empty?
    end
    arr3.reverse
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []