def anagrams(arr1)
  collection_arr = []
  word_char = []
  comparing_arr = []
  aoa_count = 0
  count4 = 0

  loop do 
    word_char = arr1[count4].chars
    collection_arr << [arr1[aoa_count]]
    element_count = 0
    count2 = 1

    loop do 
      comparing_arr = arr1[element_count].chars
      if word_char.include?(comparing_arr[-1]) && word_char.include?(comparing_arr[-2]) && word_char.include?(comparing_arr[-3]) && word_char.include?(comparing_arr[-4])
        if collection_arr[aoa_count].include?(arr1[element_count])
          nil
        else
          collection_arr[aoa_count] << arr1[element_count] 
        end 
      end
      count2 += 1
      element_count += 1
      break if count2 == arr1.size + 1
    end

    aoa_count += 1
    count4 += 1

    break if count4 == arr1.size 
  end

  collection_arr.each(&:sort!).sort.uniq
end


words = %w(live cat act evil resini tosini)

p anagrams(words)