# Write your code here.
def take_a_number (queue, new_person)
  queue.push(new_person)
  puts "Welcome, #{new_person}. You are number #{queue.count} in line."
end

def now_serving (queue)
  if queue.count > 0
    puts "Currently serving #{queue[0]}."
    queue.shift
  else
    puts "There is nobody waiting to be served!"
  end
end

def line (queue)
  if queue.count > 0
    message = "The line is currently:"
    num = 1
    queue.each do |name|
      message = "#{message} #{num}. #{name}"
      num += 1
    end
    puts message
  else
    puts "The line is currently empty."
  end
end
