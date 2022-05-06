=begin

Write a method that returns the number of Friday 
the 13ths in the year given by an argument. 
You may assume that the year is greater than 1752 
(when the United Kingdom adopted the modern 
Gregorian Calendar) and that it will remain in use 
for the foreseeable future.

=end

require "date"

def friday_13th(given_year)
  this_day = Date.new(given_year)
  arr = []
  counter = 1
  loop do
    if this_day.friday?
      if this_day.mday == 13
        arr << 1
      end
    end
    this_day += counter
    break if this_day.year == (given_year + 1)
  end
  arr.sum
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
