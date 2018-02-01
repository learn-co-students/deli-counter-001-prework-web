def line(on_line)
  if on_line.length == 0
    puts "The line is currently empty."
  else
    real_line = "The line is currently:"
    on_line.each_with_index do |customer, index|
      real_line += " #{index + 1}. #{customer}"
    end
    puts real_line
  end
end

def take_a_number(on_line, name)
  on_line.push(name)
  puts "Welcome, #{name}. You are number #{on_line.length} in line."
end

def now_serving(on_line)
  if on_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{on_line.shift}."
  end
end