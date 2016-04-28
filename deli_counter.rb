# Write your code here.
def line(queue)
  if queue.empty?
    puts "The line is currently empty."
  else
    puts "The line is currently: " + queue.map.with_index{ |name, place| (place + 1).to_s + ". " + name }.join(" ")
  end
end

def take_a_number(queue,name)
  queue.push(name)
  puts "Welcome, #{name}. You are number #{queue.length} in line."
end

def now_serving(queue)
  if queue.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{queue.shift}."
  end
end