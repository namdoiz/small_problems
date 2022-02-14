# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence (x)
  str = ''
  if x.empty? || x.split.empty?
    return ""
  else
    x = x.split
    counter = (x.size - 1)
    loop do
      if counter != 0
        str << (x[counter].concat(' '))
        counter -= 1
        break if counter == -1
      elsif counter == 0
        str << (x[counter])
        counter -= 1
        break if counter == -1
      end
    end
    str
  end
end
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
