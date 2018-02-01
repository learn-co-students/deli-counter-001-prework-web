# Write your code here.
def line(current_queue)
  queue_with_position = []
  if current_queue.size == 0
    puts "The line is currently empty."
  else
    current_queue.each_with_index { |person, position| queue_with_position << "#{position + 1}. #{person}"  }
    puts "The line is currently: #{queue_with_position.join(" ")}"
  end 
end

def take_a_number(line, name)
  line << name
  puts "Welcome, #{name}. You are number #{line.count} in line."
end

def now_serving(line)
  if line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.shift}."
  end
end