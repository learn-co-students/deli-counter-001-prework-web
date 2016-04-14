def line(line)
  if line.count == 0
    puts "The line is currently empty."
  else
    string = "The line is currently: "
    for i in (0...line.count)
      string.concat("#{i+1}. #{line[i]} ")
    end
    puts string[0, string.length-1]
  end
end



def take_a_number(line, name)
  if line.count == 0
    line.push(name)
    puts "Welcome, #{name}. You are number #{line.count} in line."
  elsif line.count != 0
    line.push(name)
    puts "Welcome, #{name}. You are number #{line.count} in line."
  end
end

def now_serving(line)
  if line.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}."
  end
end













