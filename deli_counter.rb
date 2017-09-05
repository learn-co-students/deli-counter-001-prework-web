def line(line_array)
  if line_array.empty? == true
    puts "The line is currently empty."
  else
    the_line = "The line is currently:"
    line_array.map.with_index {|name, index| the_line << " #{index + 1}. #{name}"}
    puts the_line
  end
end

def take_a_number(line_array, name)
  line_array << name
  line_number = line_array.index(name) + 1
  puts "Welcome, #{name}. You are number #{line_number} in line."
end

def now_serving(line_array)
  if line_array.empty? == true
    puts "There is nobody waiting to be served!"
  else
    serving = "Currently serving "
    serving << "#{line_array.first}."
    puts serving
  end
  line_array.shift
end
