=begin

Write a method that takes a string as an argument and 
returns a new string in which every uppercase letter is 
replaced by its lowercase version, and every lowercase 
letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

=end

DOWNCASE_LETTERS = ('a'..'z').to_a

def swapcase(str1)
  str2 = []
  str1 = str1.split(" ")
  str1 = str1.map do |word|
    word.chars.map do |let|
      if DOWNCASE_LETTERS.include?(let)
        let.upcase
      else
        let.downcase
      end
    end
  end
  str1.map! do |word|
    word.join
  end
  str1.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
