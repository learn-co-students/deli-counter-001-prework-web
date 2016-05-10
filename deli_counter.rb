# Write your code here.
def line(queue)
  if queue.empty?
    puts "The line is currently empty."
  else
    puts "The line is currently: " + queue.map.with_index(1){ |name, place| "#{place}. #{name}"}.join(" ")
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

def get_a_number(queue)
  class << queue
    attr_accessor :last_customer
  end

  if queue.empty?
    if queue.last_customer == nil
      queue.push(1)
    else
      queue.push(queue.last_customer + 1)
    end
  else
    queue.push(queue.last + 1)
  end

  queue.last
end

def serve_customer(queue)
  queue.last_customer = queue[0]
  queue.shift
end
