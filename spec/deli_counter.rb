#Adds person who entered deli to the line and prints their position
def take_a_number(deli, name)
  deli << name
  position = deli.size
  puts "Welcome, #{name}. You are number #{position} in line."
end


#Prints first person in line and removes them from line (or prints that no one is waiting, if that's the case)
def now_serving(deli)
  if deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    name = deli.shift
    puts "Currently serving #{name}."
  end
end


#Prints everyone's current place in line (or prints there's no line, if that's the case)
def line(deli)

  if deli.size == 0
    puts "The line is currently empty."
  else
    line_message = ""
    deli.each do |name|
      position = deli.index(name) + 1
      line_message << " #{position}. #{name}"
    end
    puts "The line is currently:#{line_message}"
  end

end

def get_a_number(line)
  curr_position = line.size + 1
  curr_position
end

