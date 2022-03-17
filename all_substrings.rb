=begin

Write a method that returns a list of all substrings 
of a string. The returned list should be ordered by 
where in the string the substring begins. This means 
that all substrings that start at position 0 should 
come first, then all substrings that start at position 
1, and so on. Since multiple substrings will occur at
each position, the substrings at a given position should 
be returned in order from shortest to longest.

=end
def substrings(str1)
  counter = 1
  arr = []
  str_chars = str1.chars
  loop do
    loop do 
      arr << str_chars[0, counter].join
      counter += 1
      break if counter > str1.length
    end
    str_chars.shift
    counter = 0
    break if str_chars.empty?
  end
  arr.uniq.select { |element| !element.empty?}
end

p substrings('onyejekwe') 