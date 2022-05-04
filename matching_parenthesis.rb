=begin

Write a method that takes a string as an argument, 
and returns true if all parentheses in the string are 
properly balanced, false otherwise. To be properly balanced, 
parentheses must occur in matching '(' and ')' pairs.

=end


def balanced?(str)
  brackets = str.chars.select do |let|
    let =~ /[\(\)]/
  end

  return true if brackets.empty?
  
  if brackets.join.end_with?("(")
    false
  elsif brackets.join.start_with?("(")
    opening_bracket_count = brackets.count("(")
    closing_bracket_count = brackets.count(")")
    if opening_bracket_count == closing_bracket_count
      true
    else
      false
    end
  else
    false
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false