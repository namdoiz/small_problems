def triangle(n)
  counter = 1
  spaces = n
  loop do
    puts "#{(' ' * spaces)}#{('*' * counter)}"
    counter += 1
    spaces -= 1
    break if counter > n
  end
end


triangle(23)