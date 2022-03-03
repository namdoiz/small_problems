def century_endings(cen)
  cen = cen.to_s
  if cen.end_with?('11') || cen.end_with?('12') || cen.end_with?('13')  
    cen + 'th'
  elsif cen.end_with?('1') 
    cen + 'st'
  elsif cen.end_with?('2') 
    cen + 'nd'
  elsif cen.end_with?('3') 
    cen + 'rd'
  else
    cen + 'th'
  end
end

def century(year)
  century =  year.to_f / 100
  next_century = year / 100
  if century > next_century
    next_century += 1
    century_endings(next_century)
  elsif century < next_century
    next_century -= 1
    century_endings(next_century)
  elsif century == next_century
    century_endings(century.to_i)
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'