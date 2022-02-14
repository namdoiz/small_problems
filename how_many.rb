# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(arr)
  counter = 0
  mapped = {}
  loop do
    mapped[arr[counter]] = arr.count(arr[counter])
    counter += 1
    break if counter == arr.size
  end
  mapped.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
