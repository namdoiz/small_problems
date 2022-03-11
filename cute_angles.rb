=begin

Write a method that takes a floating point number
that represents an angle between 0 and 360 degrees 
and returns a String that represents that angle in 
degrees, minutes and seconds. You should use a degree 
symbol (°) to represent degrees, a single quote (') to 
represent minutes, and a double quote (") to represent 
seconds. A degree has 60 minutes, while a minute has 60 
seconds.

=end

def dms(num)
  degree = num.to_s
  if num.integer?
    "#{degree.to_i}°00\'00\""
  else
    mins  = (num - num.to_i) * 60.0
    if mins > mins.to_i
      seconds = (mins - mins.to_i) * 60.0
      format("%1d°%02d\'%02d\"", degree.to_i, mins, seconds)
    else
      format("%1d°%02d\'%02d\"", degree.to_i, mins, 0)
    end
  end 
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) 
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")