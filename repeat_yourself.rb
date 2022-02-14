=begin

Write a method that takes two arguments, 
a string and a positive integer, and prints 
the string as many times as the integer indicates.

=end




def repeat(str="What string should I repeat this many times", x = 3)
  counter = 0
  loop do 
    puts str
    counter += 1
    break if counter == x
  end
end
repeat('wagwan',4)