def take_a_number(current_line, new_person)
  current_line << new_person
  puts "Welcome, #{new_person}. You are number #{current_line.length} in line."

end

def now_serving(current_line)
  if current_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line.first}."
    current_line.shift
  end
end

def line(current_line)
  if current_line.length == 0 
    puts "The line is currently empty."
  else
    string = ""
    current_line.each_with_index{|x,i| string << " #{i+1}. #{x}"}
    puts "The line is currently:#{string}"
  end
end

