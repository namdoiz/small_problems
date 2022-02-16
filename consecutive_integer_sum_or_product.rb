=begin 

Write a program that asks the user to enter 
an integer greater than 0, then asks if the user 
wants to determine the sum or product of all 
numbers between 1 and the entered integer.

=end

def prompt (x)
  puts ">> #{x}"
end

prompt("Please enter an integer greater than 0:")

int = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")

sum_or_product = gets.chomp

if sum_or_product == 's'
  sum = (1..int).to_a.inject(:+)
  prompt("The sum of the integers between 1 and #{int} is #{sum}.")
elsif sum_or_product == 'p'
  product = (1..int).to_a.inject(:*)
  prompt("The product of the integers between 1 and #{int} is #{product}.")
else
  prompt("Error, please restart.")
end


