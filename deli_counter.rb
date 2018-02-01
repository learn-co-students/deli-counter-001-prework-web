def take_a_number(customers, name)
  customers << name
  puts "Welcome, #{name}. You are number #{customers.length} in line."
end

def now_serving(customers)
  if customers.empty?
    return puts "There is nobody waiting to be served!"
  end

  name = customers.shift
  puts "Currently serving #{name}."
end

def line(customers)
  if customers.empty?
    return puts "The line is currently empty."
    # we return here (rather than just puts) to exit the method
  end

  list = (customers.map.with_index do |name, i|
    place_in_line = i + 1
    "#{place_in_line}. #{name}"
  end).join(' ')

  puts "The line is currently: #{list}"
end