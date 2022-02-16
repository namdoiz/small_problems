=begin

Using the multiply method from the 
"Multiplying Two Numbers" problem, write a method
that computes the square of its argument 
(the square is the result of multiplying a number by itself).

=end

def multiply(num1,num2)
  num1 * num2
end

def square(x)
  multiply(x,x)
end
p square(5)