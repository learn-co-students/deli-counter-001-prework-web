

def line(line)
  if line == []
    puts "The line is currently empty."
  else
    
    i = 0
    string = ""
    while i < line.length
      string = string + " #{i + 1}. #{line[i]}"
      i += 1
    end
    puts "The line is currently:#{string}"

    
  end
end

def take_a_number(line, person)
  line.push(person)
  puts "Welcome, #{person}. You are number #{line.index(person) + 1} in line."
end

def now_serving(line)
  if line == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}."
  end
end


