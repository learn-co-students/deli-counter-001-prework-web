def line(queue)
  if queue.empty?
    puts "The line is currently empty."
  else
    status = "The line is currently:"
    queue.each_with_index do |customer, position|
      status.concat(" #{position + 1}. #{customer}")
    end
    puts status
  end
end

def take_a_number(queue, customer)
  queue << customer
  position = queue.index(customer) + 1
  puts "Welcome, #{customer}. You are number #{position} in line."
end

def now_serving(queue)
  if queue.empty?
    puts "There is nobody waiting to be served!"
  else
    customer = queue.shift
    puts "Currently serving #{customer}."
  end
end

