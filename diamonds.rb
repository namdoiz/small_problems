=begin

Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

=end

def diamond(odd_num)
  arr = (1..odd_num).to_a.select{|num| num.odd?}

  arr.each do |num|
    puts"#{(('*' * num).center(odd_num))}"
  end

  arr.pop

  arr.reverse.each do |num|
    puts"#{(('*' * num).center(odd_num))}"
  end
end

diamond(20)