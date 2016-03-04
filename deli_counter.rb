def line(x)
  line = "The line is currently:"
  if x == []
    puts "The line is currently empty."
  else
    x.each_with_index do |name,index|
      line << " #{index + 1}. #{name}"
  end
  puts line
end
end

def take_a_number(line,name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.index(name) + 1} in line."
end

def now_serving (x)
  if x==[]
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{x.first}."
    x.shift
  end
end
