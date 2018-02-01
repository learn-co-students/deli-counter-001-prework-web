def line(line_array)
  if line_array.empty?
    #There are no customers.
    puts "The line is currently empty." 
  else
    #List the customers in line to be served.
    current_line = "The line is currently:"
    line_array.each_with_index do |customer,index|
      customer_place_in_line = index + 1
      current_line << " #{customer_place_in_line}. #{customer}"
    end
    puts current_line
  end
end

def take_a_number(line_array, customer)
  line_array << customer
  puts "Welcome, #{customer}. You are number #{line_array.length} in line."
  return line_array
end

def now_serving(line_array)
  if line_array.empty?
    #There are no customers to serve.
    puts "There is nobody waiting to be served!"
  else
    #Serve a customer, remove them from the line.
    puts "Currently serving #{line_array.first}."
    line_array.shift
    return line_array
  end
end