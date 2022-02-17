=begin

Write a method that takes two strings as arguments,
determines the longest of the two strings, 
and then returns the result of concatenating 
the shorter string, the longer string, and the s
horter string once again. You may assume that 
the strings are of different lengths.

=end

def short_long_short (x,y)
  if x.size > y.size
    y+x+y
  else
    x+y+x
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"