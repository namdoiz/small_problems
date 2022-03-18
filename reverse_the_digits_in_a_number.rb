def reversed_number(int)
  arr = int.digits
  final_num = 0
  count = 0
  loop do
    final_num = final_num * 10 + arr[count]
    count += 1
    break if count == arr.size
  end
  final_num
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1