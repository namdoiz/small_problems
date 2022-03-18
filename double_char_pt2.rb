CONSONANTS = ('a'..'z').to_a.select {|let| let =~ /[^aeiou]/}

def double_consonants(str)
  arr = []
  counter = 0
  str_arr = str.chars
  return str if str_arr.empty?
  loop do 
    if CONSONANTS.include?(str_arr[counter].downcase)
      arr << str_arr[counter] << str_arr[counter]
    else
      arr << str_arr[counter]
    end
    counter += 1
    break if counter == (str_arr.size)
  end
  arr.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""