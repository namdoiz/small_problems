=begin

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

=end










def block_word?(str)
  letters_block = ["BO", "XK", "DQ", "CP", "NA", "GT", "RE", "FS", "JW", "HU", "VI", "LY", "ZM"]
  final_arr = []
  str.upcase!
  letters = str.chars
  letters.each do |let|
    letters_block.each_with_index do |block,index|
      final_arr << index if block.include?(let)
    end
  end
  if final_arr.uniq! == nil
    true
  else
    false
  end
end








p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true