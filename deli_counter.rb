def line(customers_in_line)
  line_status_string = "The line is currently"
  if customers_in_line.size == 0
    puts line_status_string += " empty."
  else
    line_status_string += ":"
    customers_in_line.each_with_index do |customer, i|
      line_status_string += " #{i+1}. #{customer}"
    end
    puts line_status_string
  end
end

def take_a_number(customers_in_line, new_customer)
  customers_in_line << new_customer
  puts "Welcome, #{new_customer}. You are number #{customers_in_line.size} in line."
  customers_in_line
end

def now_serving(customers_in_line)
  if customers_in_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers_in_line.shift}."
  end
  customers_in_line
end