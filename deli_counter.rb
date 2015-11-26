# Write your code here.
def line(cust_array)
  if cust_array.size == 0
    puts "The line is currently empty."
  else
    build_string = "The line is currently:"
    running_index = 1
    cust_array.each do |cust_name|
      build_string = build_string + " #{running_index}. #{cust_name}"
      running_index += 1
    end
    puts build_string
  end
end

def take_a_number(current_line, new_customer)
  if current_line.size == 0
    puts "Welcome, #{new_customer}. You are number 1 in line."
    current_line << new_customer
  else
    new_spot = current_line.size + 1
    puts "Welcome, #{new_customer}. You are number #{new_spot} in line."
    current_line << new_customer
  end
end

def now_serving(current_line)
  if current_line.size == 0
    puts "There is nobody waiting to be served!"
  else
    served = current_line.shift
    puts "Currently serving #{served}."
  end
end