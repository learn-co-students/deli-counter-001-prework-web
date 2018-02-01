# Write your code here.
def line(queue)
  str = ""
  if queue.empty?
    puts "The line is currently empty."
  else
    arr = queue.each_with_index.map {|name, place| "#{place+1}. #{name}"}.join(" ")
    puts "The line is currently: #{arr}"
  end
end

def take_a_number(queue, name)
  line = queue.push(name)
  puts "Welcome, #{name}. You are number #{line.index(name) + 1} in line."
end

def now_serving(queue)
  if queue.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{queue.shift}."
  end
end