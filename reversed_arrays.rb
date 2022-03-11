=begin
Write a method that takes an Array as an argument, 
and reverses its elements in place; that is, mutate 
the Array passed into this method. The return value 
should be the same Array object.

You may not use Array#reverse or Array#reverse!.
=end

def reverse!(arr)
  if !arr.empty?
    new_arr = []
    counter = -1
    loop do
      new_arr << arr[counter]
      counter -= 1
      break if counter == -(arr.size + 1)
    end
    new_arr
  else
    arr
  end
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
p reverse!(list) == [] # true
list == [] # true