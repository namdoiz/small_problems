=begin

Write a method that returns a list of all 
substrings of a string that start at the beginning 
of the original string. The return value should be 
arranged in order from shortest to longest substring.

=end

def leading_substrings(str1)
  str_arr = str1.chars
  arr = []
  loop do
    arr << str_arr.join
    str_arr.pop
    break if str_arr.empty?
  end
  arr.sort
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']