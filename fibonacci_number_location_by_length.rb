def find_fibonacci_index_by_length(num_length)
  num1 = 0
  num2 = 1
  fib_index = 0
  fibonacci_numbers = [1, 1]
  loop do
    fibonacci_numbers << fibonacci_numbers[num1] + fibonacci_numbers[num2]
    num1 += 1
    num2 += 1
    fib_index += 1
    break if fibonacci_numbers[fib_index].digits.count == num_length
  end
  fibonacci_numbers.index(fibonacci_numbers[-1])
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
