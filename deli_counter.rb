def line (line)
  output = "The line is currently"
  line.empty? ? output += " empty." : output += ":"

  line.each_with_index do |name, index|
    output += " #{index+1}. #{name}"
  end

  puts output
end

def take_a_number(line, name)
  line << name

  position = line.index(name)+1

  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
    line.shift
  end
end