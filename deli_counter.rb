def line(customers)
  if customers.length == 0
    display_line = "The line is currently empty."
  else
    display_line = "The line is currently:"
    customers.each_with_index do |customer, index|
      display_line = display_line + " #{index+1}. #{customer}"
    end
  end
  puts display_line
end

def take_a_number(customers, new_customer)
  customers << new_customer
  puts "Welcome, #{new_customer}. You are number #{customers.length} in line."
  customers
end

def now_serving(customers)
  if customers.length == 0
    announce = "There is nobody waiting to be served!"
  else
    announce = "Currently serving #{customers.shift}."
  end
  puts announce
  customers
end
