# Write your code here.

katz_deli = []

def take_a_number(katz_deli, name)
    if katz_deli.length == 0
        katz_deli.push(name)
        else
    katz_deli.push(name) # push new customer name onto end of line
    place_in_line = katz_deli.length
    puts "Welcome #{name}. You are number #{place_in_line} in line."
end
    end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
        else puts "Currently serving #{katz_deli.first}."
        katz_deli.shift #remove first item
    end
end

def line(katz_deli)
   if katz_deli.length == 0
        puts "The line is currently empty."
        else
        message = "The line is currently: " # create first portion of string
        katz_deli.each_with_index do |name, index| # iterate over array with two arguments
            message += "#{index +1}. #{name} " # with each pass, add additional text to message, display message
            end
        puts message # print final message
        end
    end


