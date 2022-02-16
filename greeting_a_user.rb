=begin

Write a program that will ask for user's name. 
The program will then greet the user. If the user 
writes "name!" then the computer yells back to 
the user.

=end

def prompt (x)
  puts "=> #{x}"
end

prompt("What is your name?")
name = gets.chomp
if name.chars.include?("!")
  name.gsub!("!",".")
  prompt("HELLO #{name.upcase} WHY ARE WE SCREAMING?")
else
  prompt("Hello #{name}.")
end
