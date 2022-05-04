=begin

In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

=end


def letter_percentages(str)
  str_chars = str.chars
  lowercase = ((str_chars.select{|let| let =~ /[a-z]/}.size.to_f) / str.size) * 100
  uppercase = ((str_chars.select{|let| let =~ /[A-Z]/}.size.to_f) / str.size) * 100
  neither = ((str_chars.select{|let| let =~ /[^A-Za-z]/}.size.to_f) / str.size) * 100
  
  final_hash = {lowercase: lowercase, uppercase: uppercase, neither: neither}
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }