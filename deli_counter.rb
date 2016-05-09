def line(order)
  if order.empty?
    puts "The line is currently empty."
  else
    puts "The line is currently: " + order.map.with_index{ |name, place| (place + 1).to_s + ". " + name }.join(" ")
  end
end

def take_a_number(order,name)
  order.push(name)
  puts "Welcome, #{name}. You are number #{order.length} in line."
end

def now_serving(order)
  if order.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{order.shift}."
  end
end
