=begin

Build a program that displays when the user 
will retire and how many years she has to work 
till retirement.

=end

def prompt (x)
  puts "=> #{x}"
end

prompt("What is your age?")
age = gets.chomp.to_i
prompt("What age would you like to retire?")
mochte_retire = gets.chomp.to_i
current_year = Time.now.day
more_working_years = mochte_retire - age
retirement = (current_year + more_working_years)
prompt("It's #{current_year}. You will retire in #{retirement}.")
prompt("You have only #{more_working_years} years of work to go!")
