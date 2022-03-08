def time_of_day(int)
  if int.positive?
    hrs = int / 60
    mins = int % 60
    if hrs > 24
      loop do
        hrs -= 24
        break if hrs < 24
      end
      if hrs.digits.count == 1
        if mins.digits.count == 1
          "0#{hrs}:0#{mins}"
        else
          "0#{hrs}:#{mins}"
        end
      elsif hrs.digits.count > 1
        if mins.digits.count > 1
          "#{hrs}:#{mins}"
        else
          "#{hrs}:0#{mins}"
        end
      end
    elsif hrs < 24
      if hrs.digits.count == 1
        if mins.digits.count == 1
          "0#{hrs}:0#{mins}"
        else
          "0#{hrs}:#{mins}"
        end
      elsif hrs.digits.count > 1
        if mins.digits.count > 1
          "#{hrs}:#{mins}"
        else
          "#{hrs}:0#{mins}"
        end
      end
    end
  elsif int.negative?
    hrs = -int / 60
    mins = -int % 60
    if hrs <= 23
      hrs = 23 - hrs
      mins = 60 - mins
      if hrs > 24
        loop do
          hrs -= 24
          break if hrs < 24
        end
        if hrs.digits.count == 1
          if mins.digits.count == 1
            "0#{hrs}:0#{mins}"
          else
            "0#{hrs}:#{mins}"
          end
        elsif hrs.digits.count > 1
          if mins.digits.count > 1
            "#{hrs}:#{mins}"
          else
            "#{hrs}:0#{mins}"
          end
        end
      elsif hrs < 24
        if hrs.digits.count == 1
          if mins.digits.count == 1
            "0#{hrs}:0#{mins}"
          else
            "0#{hrs}:#{mins}"
          end
        elsif hrs.digits.count > 1
          if mins.digits.count > 1
            "#{hrs}:#{mins}"
          else
            "#{hrs}:0#{mins}"
          end
        end
      end
    elsif hrs > 23
      if hrs > 24
        loop do
          hrs -= 24
          break if hrs < 24
        end
        hrs = 23 - hrs
        mins = 60 - mins
        if hrs.digits.count == 1
          if mins.digits.count == 1
            "0#{hrs}:0#{mins}"
          else
            "0#{hrs}:#{mins}"
          end
        elsif hrs.digits.count > 1
          if mins.digits.count > 1
            "#{hrs}:#{mins}"
          else
            "#{hrs}:0#{mins}"
          end
        end
      elsif hrs < 24
        if hrs.digits.count == 1
          if mins.digits.count == 1
            "0#{hrs}:0#{mins}"
          else
            "0#{hrs}:#{mins}"
          end
        elsif hrs.digits.count > 1
          if mins.digits.count > 1
            "#{hrs}:#{mins}"
          else
            "#{hrs}:0#{mins}"
          end
        end
      end
    end
  else
    "00:00"
  end
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"