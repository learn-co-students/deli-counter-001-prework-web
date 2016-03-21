# Write your code here.

katz_deli = []

def line (katz_deli)
    if katz_deli.size == 0
     puts "The line is currently empty."
     else
        spotinline = 1
        response= "The line is currently: "
        while spotinline <= katz_deli.size
            if
             katz_deli.at(spotinline-1) == katz_deli.last
             queue = "#{spotinline}. #{katz_deli.at(spotinline-1)}"
            else
            queue= "#{spotinline}. #{katz_deli.at(spotinline-1)} "
            end
        response = response + queue
        spotinline+=1
        end
    puts response
    end
    
end

def take_a_number (katz_deli, name)
        katz_deli.push("#{name}")
        puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving (katz_deli)
    if katz_deli.length == 0
       puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.first}."
        katz_deli=katz_deli.shift
    end
end
        
    
    