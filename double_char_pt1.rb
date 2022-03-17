=begin

Write a method that takes a string, 
and returns a new string in which every character 
is doubled.

=end

def repeater(str)
  return str if str.size == 0
  arr = []
  str_arr = str.chars
  counter = 0
  loop do
    arr << str_arr[counter] * 2
    counter += 1
    break if counter == str_arr.size
  end
  arr.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''