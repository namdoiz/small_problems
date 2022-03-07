def ascii_value(str)
  str = str.chars.map{|let| let.ord}
  str.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0