katz_deli = []

def line(current_line)
  if current_line == []
    puts "The line is currently empty."
  else 
    phrase = "The line is currently:"
    current_line.each_with_index do |name, index| 
      phrase << " #{index + 1}. #{name}"
    end
    puts phrase 
  end
end 

def take_a_number(current_line, name)
  current_line << name
  place = current_line.length
  puts "Welcome, #{name}. You are number #{place} in line."
end

def now_serving(current_line)
  if current_line == []
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{current_line[0]}."
    current_line.shift
  end
end