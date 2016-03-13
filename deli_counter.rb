# Write your code here.
katz_deli = []

def line(customers)
  output = ""
  if customers.empty? == false
    output = "The line is currently:"
    customers.each_with_index do |person, index|
      place = index + 1
      output << " #{place}. #{person}"
    end
  elsif customers.empty? == true
    output = "The line is currently empty."
  end
  puts output
end

def take_a_number(line_of_customers, new_name_to_add)
  line_of_customers << new_name_to_add
  place_in_line = line_of_customers.size
  puts "Welcome, #{new_name_to_add}. You are number #{place_in_line} in line."
  line_of_customers
end

def now_serving(customers)
  if customers.empty? == false
    puts "Currently serving #{customers[0]}."
    customers.shift
  elsif customers.empty? == true
    puts "There is nobody waiting to be served!"
  end
end