=begin

Rewrite your recursive fibonacci method so that it computes its 
results without recursion.

=end

def fibonacci(num)
  arr = [1, 1]
  counter = 0
  loop do
    arr << arr[counter] + arr[counter + 1]
    counter += 1
    #break if arr.size == num 
  end
  arr[-1]
end





p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501