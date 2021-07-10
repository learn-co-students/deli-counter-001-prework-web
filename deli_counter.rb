# Write your code here.
def line(in_line)
  if in_line.count < 1
    puts "The line is currently empty."
  else
    customers = "The line is currently:"
    in_line.each_with_index do |customer, index|
      index += 1
      customers << " #{index}. #{customer}"
    end
    puts customers
  end
end

def take_a_number(in_line, customer)
  number = in_line.count + 1
  in_line << customer
  puts "Welcome, #{customer}. You are number #{number} in line."
end

def now_serving(in_line)
  if in_line.count < 1
    puts "There is nobody waiting to be served!"
  else
    customer = in_line.shift
    puts "Currently serving #{customer}."
  end
end

