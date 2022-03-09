def after_midnight(str)
  hours, mins = str.split(':')
  hours = hours.to_i
  mins = mins.to_i
  if mins != 0
    time = ((mins / 60.0) + hours) * 60
    if time == 1440
      0
    else
      time.to_i
    end
  elsif mins == 0
    time = hours * 60
    if time == 1440
      0
    else
      time.to_i
    end
  end
end

def before_midnight(str)
  time = 1440 - after_midnight(str)
  if time == 1440
    0
  else
    time.to_i
  end
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0