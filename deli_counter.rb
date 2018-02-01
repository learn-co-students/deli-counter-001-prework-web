def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
    else
    line = "The line is currently:"
    katz_deli.each_with_index(1) do |name, index|
      line += " #{index}. #{name}"
    end
  puts "#{line}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{katz_deli.shift}."
  end
end

def get_a_number(queue)
  queue << queue.length + 1
  queue.last
end

def serve_customer(queue)
  if queue.length != 0
    queue.shift
  end
  queue
end

