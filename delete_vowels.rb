VOWELS = %w(a e i o u A E I O U)

def remove_vowels(arr)
  arr.map! do |word|
    word.chars.select do |let|
      !VOWELS.include?(let)
    end
  end
  arr.map! do |lets|
    lets.join
  end
  arr
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']