# Write your code here.
katz_deli = []


def line (katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else 
     result = "The line is currently:" 
     katz_deli.map.with_index {|x, i| result << " #{i + 1}. #{x}"}
      puts result
  end
end

def take_a_number (katz_deli, name)

  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end


def now_serving (katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end



queue = []
$num = 0 

def get_a_number (queue)


$queue 

  if queue.length == 0 && $num == 0
    queue.push(queue.length+1)
  elsif queue.length == 0 && $num != 0
    queue.push($num + 1)
  else 
    queue.push(queue.last+1)
  end

  return queue.last

end


def serve_customer (queue)
  if queue.length == 1
    $num = queue[0]
  end
queue.shift

end





