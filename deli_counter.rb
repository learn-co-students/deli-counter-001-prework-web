def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    line = "The line is currently:"
    deli.each.with_index(1) do |person, index|
      line << " #{index}. #{person}"
    end
    puts line
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end

#New methods

def get_a_number(queue)

  if queue.size == 0
    queue.push(1)
    else
    queue << queue.last.next
  end

  return queue.last
end

def serve_customer(queue)
  queue.shift
end

