# Write your code here.

katz_deli = []

def line(customer_array)
  if customer_array.empty?
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    customer_array.each_with_index {|customer, position| message << " #{position+1}. #{customer}" }
    puts message
  end
end

def take_a_number(customer_array,new_customer)
  customer_array << new_customer
  puts "Welcome, #{new_customer}. You are number #{customer_array.length} in line."
end

def now_serving(customer_array)
  customer_array.empty? ? puts("There is nobody waiting to be served!") : puts("Currently serving #{customer_array.shift}.")
end