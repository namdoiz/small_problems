=begin

Write a method that takes a string argument and 
returns a new string that contains the value of 
the original string with all consecutive 
duplicate characters collapsed into a single 
character. You may not use String#squeeze or 
String#squeeze!.

=end

def crunch(str)
  arr = []
  str = str.chars
  counter = 0
  arr << str[counter]
  loop do
    counter += 1
    if str[counter] == str[counter - 1]
      arr << 0
    else
      arr << str[counter]
    end
    break if counter == str.size + 1
  end
  arr.join.delete('0')
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''