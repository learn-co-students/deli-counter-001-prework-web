def take_a_number(line_array, name)
  line_array << name
  spot = line_array.index(name)+1
  puts "Welcome, #{name}. You are number #{spot} in line."
  spot
end

def line(line_array)
  if line_array.empty?
    puts "The line is currently empty."
  else
    line_string = ""
    line_array.each { |name| line_string += (" #{line_array.index(name)+1}. " + name) }
    puts "The line is currently:#{line_string}"
  end
end

def now_serving(line_array)
  if line_array.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + line_array[0] + "."
    line_array.delete_at(0)
  end
end