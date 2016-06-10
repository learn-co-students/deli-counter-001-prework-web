# Write your code here.

def line(customers)
    if customers.length == 0
        puts "The line is currently empty."
    else
        output = "The line is currently:"
        counter = 0
        for name in customers
             output += " #{counter + 1}. #{customers[counter]}"
            counter += 1
        end
        puts output
    end
end

def take_a_number(customers, newCustomer)
    customers << newCustomer
    puts "Welcome, #{newCustomer}. You are number #{customers.index(newCustomer)+1} in line."
    customers
end

def now_serving(customers)
    if customers.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{customers[0]}."
        customers.shift
    end
end