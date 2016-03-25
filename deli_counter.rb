# Write your code here.
# #line takes a array of customers and prints their names and number in order
def line(customers)
  # initiate line_info prior to finding the info
  line_info = ""

  ## find out if there's actually a customer
  # if not, line info should reflect that
  # Otherwise, line info should list customer(s) with the position in line
  if customers.size == 0
    line_info = "The line is currently empty."
  else
    line_info = "The line is currently:"
    customers.each {|c| line_info.concat(" #{customers.index(c) + 1}. #{c}")}
  end
  puts line_info
end

###ake_a_number adds a customer to the line and assigns them a number
def take_a_number(customers, name)
  customers.push(name)
  puts "Welcome, #{name}. You are number #{customers.index(name) + 1} in line."
end

# #now_serving tells what customer is being served
def now_serving(customers)
  if customers.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers.first}."
    customers.delete(customers.first)
  end
end