=begin 

Write a method that returns true if its 
integer argument is palindromic, false otherwise.
A palindromic number reads the same forwards 
and backwards.

=end

def palindromic_number?(x)
  if x.integer?
    x.to_s == x.to_s.reverse
  else
    "error"
  end
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# these should all return true on terminal
