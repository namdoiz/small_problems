def string_to_integer(str)
  str_num = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, 
             '4' => 4, '5' => 5, '6' => 6, 
             '7' => 7, '8' => 8, '9' => 9}
  str = str.chars.map do |num|
    str_num[num]
  end
  str2 = str.clone
  str2.reverse!
  counter = 0
  otho = 1
  loop do 
    if str2[counter] == 0
      str2[counter] *= otho
      otho *= 10
      counter += 1
      break if counter == str2.size
    else
      str2[counter] /= str2[counter]
      str2[counter] *= otho
      otho *= 10
      counter += 1
      break if counter == str2.size
    end
  end
  str2.reverse!
  counter = -1
  final_num = str[counter]
  counter = -2
  loop do 
    final_num = str[counter] * str2[counter] +final_num
    counter -= 1
    break if counter < -str.size
  end
  final_num
end

