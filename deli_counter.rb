def line(katz_deli)
  people = ""
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    katz_deli.each.with_index(1) do |name, number|
      people << " #{number}. #{name}"
    end
    puts "The line is currently:#{people}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end


def get_a_number(queue)
  if queue.empty?
  queue << 1
    else
    queue << queue.last+1
  end
  return queue.last
end

def serve_customer(queue)
  queue.shift
end


