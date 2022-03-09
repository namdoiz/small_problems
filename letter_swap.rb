def swap(str)
  arr = []
  str.split(' ').each do |word|
    x = word[-1]
    y = word[0]
    word[0] = x
    word[-1] = y
    arr << word
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'