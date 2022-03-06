DIGITS = {1 => '1', 2 => '2', 3 => '3', 
          4 => '4', 5 => '5', 6 => '6', 
          7 => '7', 8 => '8', 9 => '9', 
          0 => '0'}

# my solution

def integer_to_string(int)
  int = int.digits.map {|num| DIGITS[num]}
  int.reverse.join 
end

# another solution by Teresa Tran

=begin
def integer_to_string(number)
  string = number.digits.reverse.join
end
=end

# testing...
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# the map method is redundant here because 
# the join method joins the array as a string
