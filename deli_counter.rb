# Write your code here.

katz_deli = []

def line(katz_deli)
    if katz_deli.empty? 
        puts "The line is currently empty."
    else
        message = "The line is currently:"
        katz_deli.each.with_index(1) do |name, index|
            message += " #{index}. #{name}"
        end 
        puts message    
    end 
end 

def take_a_number(katz_deli, new_customer)
    katz_deli << new_customer 
    puts "Welcome, #{new_customer}. You are number #{katz_deli.length} in line."
end 

def now_serving(katz_deli)
    if katz_deli.empty? 
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli.shift}."
    end 
end 
