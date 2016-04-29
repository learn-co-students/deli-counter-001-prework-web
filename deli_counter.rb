# Write your code here.
def line(line)
  if line == []
    output = "The line is currently empty."
  else
    output = "The line is currently:"
    line.each_with_index do |name, index|
      output += " #{index + 1}. #{name}"
    end
  end
  puts output
end

def take_a_number(line, person)
  if line.size == 0
    line.push(person)
    puts "Welcome, #{person}. You are number 1 in line."
    line
  else
    line.push(person)
    position = line.size
    puts "Welcome, #{person}. You are number #{position} in line."
    line    
  end
end

def now_serving(line)
  if line.size == 0
    puts "There is nobody waiting to be served!"
  else
    serving = line.shift()
    puts "Currently serving #{serving}."
  end
end