=begin

Write a program that reads the content of a text file 
and then prints the longest sentence in the file based on 
number of words. Sentences may end with periods (.), 
exclamation points (!), or question marks (?). 
Any sequence of characters that are not spaces or 
sentence-ending characters should be treated as a word. 
You should also print the number of words in the 
longest sentence.

=end

# use File.read to read any outside files to be used by your method

def longest_sentence(text)
  text = File.read("#{text}")
  split_text = text.split(/[!.?]/)
  counts_array = []
  split_text.each do |parag|
    counts_array << parag.split.count
  end
  maximum_index = counts_array.index(counts_array.max)
  "The longest sentence is \n\n\n\"#{split_text[maximum_index]}\"\n\n\n and it has #{counts_array[maximum_index]} words in it"
end



puts longest_sentence('pg84.txt')