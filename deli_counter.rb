def line(deli_line)
  if deli_line.empty?
    puts "The line is currently empty."
  else
    response = "The line is currently:"
    deli_line.each_with_index do |customer, index|
      response << " #{index + 1}. #{customer}"
    end
    puts response
  end
end

def take_a_number(deli_line, customer)
  deli_line << customer
  puts "Welcome, #{customer}. You are number #{deli_line.count} in line."
end

def now_serving(deli_line)
  if deli_line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.shift}."
  end
end
