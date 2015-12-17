# Write your code here.

def line(queue)
  if queue.empty? 
    puts "The line is currently empty."
  else
  current_line = ""
  queue.each_with_index do |name, index|
    current_line << " #{index + 1}. #{name}"
  end
  puts "The line is currently:" + current_line
end
end

def take_a_number(queue, name)
  queue << name
  puts "Welcome, #{name}. You are number #{queue.size} in line."
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
  end
  line.shift
end



