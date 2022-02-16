=begin

Create a simple tip calculator. 
The program should prompt for a bill amount and 
a tip rate. The program must compute the tip and 
then display both the tip and the total amount of 
the bill.

=end


def prompt (x)
  puts "=> #{x}"
end

prompt("What is the bill?")
bill = gets.chomp.to_f
prompt("What is the tip percentage?")
tip_percentage = gets.chomp.to_f
tip = ((tip_percentage / 100) * bill).round(1)
total = (tip + bill).round(1)
prompt("The tip is $#{tip}")
prompt("The total is $#{total}")
