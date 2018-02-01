def line(queue)
  if queue.empty?
    puts "The line is currently empty."
  else
    s = queue.map.with_index do |name, index| 
      " #{index + 1}. #{name}"
    end 
    puts "The line is currently:#{s.join}"
  end
end

def take_a_number(queue, name)
  queue << name
  puts "Welcome, #{name}. You are number #{queue.size} in line."
  return queue.size
end

def now_serving(queue)
  if queue.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{queue.shift}."
  end
end
