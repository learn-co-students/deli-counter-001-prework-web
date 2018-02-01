katz_deli = []


def line(katz_deli)
customer = ["Logan","Avi","Spencer"]
index = 0

if katz_deli.size == 0
    empty_phrase = "The line is currently empty."
    puts empty_phrase
else
    currentline_phrase = "The line is currently:"
    customer.each.with_index(1) do |customer, i|
    currentline_phrase << " #{i}. #{customer}"
    index += 1
    end
    puts currentline_phrase
end #end if
end #end def

def take_a_number(katz_deli, customer)
    katz_deli.push(customer)
    puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        served = katz_deli.shift
        puts "Currently serving #{served}."
    end
    
end