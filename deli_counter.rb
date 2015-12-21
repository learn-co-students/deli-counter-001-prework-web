def line(katz_deli)# Write your code here.
if katz_deli == []
    puts "The line is currently empty."
else
    order = ""
    katz_deli.each_with_index do |name, index|
        place_in_line = index + 1
        order << " #{place_in_line}. #{name}"
    end
        puts "The line is currently:#{order}"
end
end

def take_a_number(katz_deli, customer)
       katz_deli << customer
        new_in_line = katz_deli.length
        puts "Welcome, #{customer}. You are number #{new_in_line} in line."
    katz_deli
end

def now_serving(katz_deli)
    if katz_deli == []
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end
