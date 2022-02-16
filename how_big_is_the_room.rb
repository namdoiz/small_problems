def prompt (x)
  puts "=> " + x
end
prompt('Enter the length of the room in meters:')
length = gets.chomp
prompt('Enter the width of the room in meters:')
width = gets.chomp
area = (length.to_f * width.to_f).round(2)
area_sqft = (area * 10.7639).round(2)
prompt("The area of the room is #{area} square meters (#{area_sqft} square feet).")