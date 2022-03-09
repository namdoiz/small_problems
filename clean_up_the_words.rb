=begin

Given a string that consists of some words 
(all lowercased) and an assortment of non-alphabetic 
characters, write a method that returns that string with 
all of the non-alphabetic characters replaced by spaces. 
If one or more non-alphabetic characters occur in a row, 
you should only have one space in the result (the result 
should never have consecutive spaces).

=end

LETTERS = ('a'..'z').to_a

def cleanup(str)
  str = str.chars.map do |char|
    char = " " unless (LETTERS.include?(char))
    char
  end
  str.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '