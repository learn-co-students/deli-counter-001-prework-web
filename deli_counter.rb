katz_deli = []

def take_a_number(queue,name)
  queue.push(name)
  position = queue.length
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(queue)
  name = queue.shift
  if name == nil
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{name}."
  end
end

def line(queue)
  if queue.length == 0
    puts "The line is currently empty."
  else
    line = []
    queue.each_with_index do |name, idx|
      line.push("#{idx + 1}.",name)
    end
    puts "The line is currently: #{line.join(" ")}"    
  end
end

