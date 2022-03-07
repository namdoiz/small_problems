DIGITS = {1 => '1', 2 => '2', 3 => '3', 
          4 => '4', 5 => '5', 6 => '6', 
          7 => '7', 8 => '8', 9 => '9', 
          0 => '0', -1 => '-1', -2 => '-2', -3 => '-3', 
          -4 => '-4', -5 => '-5', -6 => '-6', 
          -7 => '-7', -8 => '-8', -9 => '-9'}

def signed_integer_to_string(int)
  if int.negative?
    int *= -1
    arr = int.digits
    arr[-1] *= -1
    arr = arr.map {|num| DIGITS[num]}
    arr = arr.reverse.join
  elsif int.positive?
    arr = int.digits
    arr = arr.map {|num| DIGITS[num]}
    arr[-1].prepend('+')
    arr = arr.reverse.join
  else
    int = int.digits.map {|num| DIGITS[num]}
    int.reverse.join
  end
end

# testing... should all output true
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
