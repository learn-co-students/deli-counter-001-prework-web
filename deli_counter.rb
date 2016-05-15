def line(positions)
  if positions == []
    puts "The line is currently empty."
  else
    list = ""
    positions.each_with_index do |name, index|
       list += " #{index + 1}. #{name}"
    end
    puts "The line is currently:" + list
  end
end

def take_a_number(positions, name)
  positions.push(name)
  puts "Welcome, #{name}. You are number #{positions.length} in line."
end

def now_serving(positions)
  if positions == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{positions.shift}."
  end
end
