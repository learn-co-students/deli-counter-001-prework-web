def line(in_line)
  if in_line.count > 0
    in_line_text = "The line is currently:"
    in_line.each_with_index do |person, i|
      in_line_text.concat(" #{i+1}. #{person}")
    end
    puts in_line_text
  else
    puts "The line is currently empty."
  end
end

def take_a_number(in_line, name)
  puts "Welcome, #{name}. You are number #{in_line.count+1} in line."
  in_line << name
end

def now_serving(in_line)
  if in_line.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{in_line.first}."
    in_line.shift
  end
end
