# Write your code here.
katz_deli = []

def take_a_number(waiting_customers, name)
  waiting_customers << name
  puts "Welcome, #{name}. You are number #{waiting_customers.length} in line."
end

def now_serving(waiting_customers)
  if waiting_customers.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{waiting_customers.shift}."
  end
end

def line(waiting_customers)
  line_response = ""
  if waiting_customers.length == 0
    line_response = "The line is currently empty."
  else
    line_response = "The line is currently:"
    waiting_customers.each_with_index do |customer, index|
      line_response += " #{index + 1}. #{customer}"
    end
  end
  puts line_response
end