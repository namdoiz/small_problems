=begin

Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the 
argument. If the argument has an odd length, you should 
return exactly one character. If the argument has an even 
length, you should return exactly two characters.

=end

def center_of(str)
  string_chars = str.chars
  final_string = []
  if string_chars.size.even?
    final_string << str[(str.size / 2) - 1] << str[(str.size / 2)]
  else
    final_string << str[(str.size / 2)]
  end
  final_string.join
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
