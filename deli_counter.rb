def line(line_array)
  if line_array.length == 0
    puts "The line is currently empty."
  else
    message =  "The line is currently:"
    line_array.each_with_index { |item, index| message.concat(" #{index+1}. #{item}") }
    puts message
  end
end


def take_a_number(line_array, name)
  line_array.push(name)
  puts "Welcome, #{name}. You are number #{line_array.length} in line."
end

def now_serving(line_array)
  if line_array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line_array.first}."
    line_array.shift
  end
end
