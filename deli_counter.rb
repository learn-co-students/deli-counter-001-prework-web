def take_a_number(line_array, name)
  puts "Welcome, #{name}. You are number #{line_array.push(name).length} in line."
end

def line(line_array)
  if line_array.empty?
    puts "The line is currently empty."
  else
    line_string = ""
    (0...line_array.length).each do |ind|
      line_string += " #{ind+1}. #{line_array[ind]}"
    end
    puts "The line is currently:#{line_string}"
  end
end

def now_serving(line_array)
  if line_array.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line_array.shift}."
  end
end
