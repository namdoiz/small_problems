NUMBERS_IN_ALPHABET = "zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen".delete('^A-Za-z ').split(' ')

NUMBERS = (0..19).to_a

HSH = {}
counter = 0
loop do
  HSH[NUMBERS[counter]] = NUMBERS_IN_ALPHABET[counter]
  counter += 1
  break if counter == NUMBERS.size
end



def alphabetic_number_sort(arr)
  arr.sort_by{|num| HSH[num]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]