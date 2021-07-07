def line(line)
  if line.size == 0
    puts "The line is currently empty."
  else
  lineup = String.new
  line.each.with_index { |name, position| lineup += " #{position +=1}. #{name}" }
  puts "The line is currently:" + lineup
  end
end

def take_a_number(line, name)
  line << name
  puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(line)
  current = line.shift
  if current
    puts "Currently serving #{current}."
  else
    puts "There is nobody waiting to be served!"
  end
end