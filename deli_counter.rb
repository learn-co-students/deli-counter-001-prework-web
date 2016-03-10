def line(customers)
  if customers.size > 0
    puts "The line is currently: " + customers.collect.with_index {|x, y| "#{y + 1}. #{x}"}.join(" ")
  else
    puts "The line is currently empty."
  end
end

def take_a_number(line, new_customers)
  line << new_customers
  puts "Welcome, #{new_customers}. You are number #{line.index(new_customers) + 1} in line."
end

def now_serving(serving)
  if serving.size == 0
     puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{serving.shift}."
  end
end