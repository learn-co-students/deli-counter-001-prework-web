# Write your code here.
current_line = []

def line(current_line)
  line_str = ""
  i = 0
  if current_line.length == 0
    puts "The line is currently empty."
  else
    until i == current_line.length
      line_str = line_str + " #{i + 1}. #{current_line[i]}"
      i += 1
    end
  puts "The line is currently:" + line_str
  end
end

def take_a_number(current_line,name)
  current_line.push(name)
  puts "Welcome, #{name}. You are number #{current_line.rindex(name) + 1} in line."
end

def now_serving(current_line)
  if current_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line.first}."
    current_line.delete_at(0)
  end
end
