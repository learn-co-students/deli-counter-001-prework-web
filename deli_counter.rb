katz_deli = []

def line(katz_deli)
    if katz_deli.count == 0
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        katz_deli.each_with_index do |name, index|
            current_line << " #{index + 1}. #{name}" #<< is shovel method/adds onto end
    end
        puts current_line
end

def take_a_number(katz_deli, new_customer)
    katz_deli.push(new_customer) #adds new_customer to the end of the array/line
    position_in_line = katz_deli.index(new_customer)+1 #number/position that the new customer is in line
    puts "Welcome, #{new_customer}. You are number #{position_in_line} in line."
end

def now_serving(katz_deli)
    if katz_deli.count == 0
        puts "There is nobody waiting to be served!"
    else
    serving = katz_deli[0] #first person in line/array
        puts "Currently serving #{serving}." #prints the customer first in line/array who is being served
    end
    katz_deli.shift #returns & removes first name from array/line
    end
end