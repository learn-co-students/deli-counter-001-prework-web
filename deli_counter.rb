#line = ["Logan", "Avi", "Spencer"]
def line(line)
  que = "The line is currently"
  if line.size == 0
    puts "#{que} empty."
  else
  lineString = ''
    for i in 0...line.size
      lineString += "#{i+1}. #{line[i]} "
    end
    lineString = lineString.chomp(lineString[lineString.size-1])
    puts "#{que}: #{lineString}"
  end
end
#line(line)
#line = ["Logan", "Avi", "Spencer"]
#line = []
#name = "jenna"
def take_a_number(line, name)
    line.push(name)
    puts "Welcome, #{name}. You are number #{line.index(name)+1} in line."
end

def now_serving(line)
  if line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}."
  end
end













