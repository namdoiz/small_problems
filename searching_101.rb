=begin

Write a program that solicits 6 numbers from the 
user, then prints a message that describes 
whether or not the 6th number appears amongst 
the first 5 numbers.

=end

def prompt (x)
  puts "==> #{x}"
end
arr = []

prompt("Enter the 1st number:")
num1 = gets.chomp.to_i

arr << num1

prompt("Enter the 2nd number:")
num2 = gets.chomp.to_i

arr << num2

prompt("Enter the 3rd number:")
num3 = gets.chomp.to_i

arr << num3

prompt("Enter the 4th number:")
num4 = gets.chomp.to_i

arr << num4

prompt("Enter the 5th number:")
num5 = gets.chomp.to_i

arr << num5

prompt("Enter the last number:")
last_num = gets.chomp.to_i

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}."
else
  puts "The number #{last_num} does not appear in #{arr}."
end
