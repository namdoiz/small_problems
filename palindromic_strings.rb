=begin

Write a method that returns true if the string 
passed as an argument is a palindrome, 
false otherwise. A palindrome reads the same 
forward and backward. For this exercise, 
case matters as does punctuation and spaces.

=end

def real_palindrome?(x)
  alphanumerics = []
  letters = ('a'..'z').to_a
  numbers = ('0'..'9').to_a
  caps = ('A'..'Z').to_a
  alphanumerics << caps
  alphanumerics << letters
  alphanumerics << numbers
  alphanumerics.flatten!
  x = (x.chars.select do |a|
    alphanumerics.include?(a)
  end)
  x = x.join
  x.downcase == x.downcase.reverse 
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# the above should all be true on command prompt
