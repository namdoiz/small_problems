def anagrams(arr)
  result = {}
  arr.each do |word|
    key = word.chars.sort.join
    if result.include?(key)
      result[key] << ' ' + word
    else
      result[key] = word
    end
  end
  result.values
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p anagrams(words)