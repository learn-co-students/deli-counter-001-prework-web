def line(customers)
  if customers.empty?
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    customers.each { |customer| message += " #{customers.index(customer) + 1}. #{customer}" }
    puts message
  end
end

def take_a_number(deli, customer)
  deli.push(customer)
  position = deli.index(customer) + 1
  puts "Welcome, #{customer}. You are number #{position} in line."
  position
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end