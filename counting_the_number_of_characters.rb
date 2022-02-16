=begin

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. 
Spaces should not be counted as a character.

=end

puts "Please write word or multiple words:"

word = gets.chomp

selected_chars = []

selected_chars << (word.chars.select do |x|
  x != " "
end)

selected_chars = selected_chars.flatten

num_of_chars = selected_chars.size

puts "There are #{num_of_chars} characters in \"#{word}\"."
