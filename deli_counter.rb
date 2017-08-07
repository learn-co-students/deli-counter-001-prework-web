def line(customers) # takes an argument of an array
  if customers == [] # if array is empty
    puts "The line is currently empty."
  else # the array has at least one name, or element
    current_line = "The line is currently: "
    customers.each.with_index do |customer, place| # iterate over the array
      current_line += "#{place + 1}. #{customer} " # string concatenation with string interpolation
    end
    puts current_line.chop # found chop method in Ruby documentation, which chops off last character of a string
  end
end

def take_a_number(customers, new_customer) # takes 2 arguments, array and string
  if customers == [] # if array is empty
    customers.push(new_customer) # add new customer to the list
    puts "Welcome, #{new_customer}. You are number 1 in line." # string interpolation
  else # the array has at least one name, or element
    customers.push(new_customer) # add new customer to the list
    puts "Welcome, #{new_customer}. You are number " + customers.length.to_s + " in line."
    # string concatenation with string interpolation
    # convert length of customers array from integer to string
  end
end

def now_serving(customers) # takes an argument of an array
  if customers == [] # if array is empty
    puts "There is nobody waiting to be served!"
  else # the array has at least one name, or element
    customer_being_served = customers.shift # remove and capture first customer
    puts "Currently serving #{customer_being_served}." # string interpolation
  end
end
