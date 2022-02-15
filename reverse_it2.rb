=begin

Write a method that takes one argument, 
a string containing one or more words, 
and returns the given string with 
words that contain five or more characters 
reversed. Each string will consist of only 
letters and spaces. Spaces should 
be included only when more than one word is 
present.

=end

def reverse_words (x)
  str = ""
  x = x.split
  counter = 0
  arr_length = x.size
    if arr_length > 1
      loop do
        if x[counter].size >= 5
          str << x[counter].reverse.concat(" ")
          counter += 1
          arr_length -= 1
          break if counter == x.size
        else
          str << x[counter].concat(" ")
          counter += 1
          arr_length -= 1
          break if counter == x.size
        end
      end
    elsif arr_length == 1
      loop do
        if x[counter].size >= 5
          str << x[counter].reverse
          counter += 1
          arr_length -= 1
          break if counter == x.size
        else
          str << x[counter]
          counter += 1
          arr_length -= 1
          break if counter == x.size
        end
      end
    end
  str
end

puts reverse_words('Professional') 
puts reverse_words('Walk around the block')   
puts reverse_words('Launch School')      
