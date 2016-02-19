def get_a_number(queue)
  total = queue.last
  if (queue.length == 0)
    total += 1
    queue.push(total)
  else
    total += 1
    queue.push(total)
  end
end

def serve_customer(queue)
  queue.shift
end


def line(deli)
  if (deli.length == 0)
    puts "The line is currently empty."
  else
    myLine = []
    deli.each_with_index{|name, index| myLine.push("#{index+1}. #{name}")}
    puts "The line is currently: #{myLine.join(" ")}"
  end
end

def take_a_number(deli, name)
  deli.push(name)
  puts "Welcome, #{name}. You are number #{(deli.index(name) + 1)} in line."
end

def now_serving(deli)
  if (deli.length == 0)
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end


