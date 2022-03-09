=begin

Modify the word_sizes method from the previous 
exercise to exclude non-letters when determining
word size. For instance, the length of "it's" 
is 3, not 4.

=end

LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a

def remove_non_letters(str)
  arr = []
  str = str.split(' ')
  str.each do |word|
    arr << word.chars
  end
  arr = arr.map do |word|
    word.select do |let|
    LETTERS.include?(let)
    end
  end
  arr.map! do |word|
    word.join
  end
  arr.join(' ')
end

def word_sizes(str)
  hsh = {}
  str = remove_non_letters(str)
  str = str.split(' ')
  str = str.map{|word| word.size}
  str.each{|num| hsh[num] = str.count(num)}
  hsh
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

