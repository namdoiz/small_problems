=begin
[Train: Typoglycemia Generator \| Codewars](https://www.codewars.com/kata/55953e906851cf2441000032/train/ruby)
5 kyu
Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia
=end


def scramble_words(given_str)
  return given_str if given_str.size == 1 || given_str.empty?
  final_arr = []
  str_arr = given_str.split
  str_arr.each do |word|
    if word.size < 3
      final_arr << word.chars
    else
      letters = word.chars.select{|cha| cha =~ /[a-z]/}
      non_letters = word.chars.select{|cha| cha =~ /[.,'-]/}
      middle_letters = letters[1..-2].sort
      middle_letters.unshift(letters[0])
      middle_letters << letters[-1]
      hash = "#"
      non_letters.size.times do |_|
        middle_letters << hash
      end
      middle_letters = middle_letters.flatten.join
      new_str = ''
      word.chars.each_with_index do |char, index|
        if char =~ /[a-z]/
          new_str << middle_letters[index]
        else
          new_str << char
          new_str << middle_letters[index]
        end
      end
      #binding.pry
      new_str = new_str.chars
      total_char = new_str.select{|cha| cha =~ /[.,'-]/}.size
      new_str.pop(total_char - (non_letters.size))
      new_str.delete('#')
      final_arr << new_str
    end
  end
  final_arr.map!{|word| word.join}
  final_arr.join(" ")
end


p scramble_words("retribution. a, no superannuated atonement lock-in jiggery-pokery") #== "rbeiiorttun. a, no saaeennprtuud aeemnnott lcik-on jeeggik-oprryy"
p scramble_words("welcome superannuated. blink jiggery-pokery, he's in")
p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
