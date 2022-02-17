=begin

Write a method that returns an Array 
that contains every other element of an Array 
that is passed in as an argument. 
The values in the returned list should be 
those values that are in the 1st, 3rd, 5th, and 
so on elements of the argument Array.

=end

def oddities(x)
  arr = []
  nils = []
  counter = 0
  return x if x.empty?
  loop do
    if counter.even?
      arr << x[counter]
      counter += 1
    elsif counter.odd?
      nils << x[counter]
      counter += 1
    end
    break if counter == x.size
  end
  arr
end
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []