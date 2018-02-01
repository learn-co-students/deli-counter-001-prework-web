# Write your code here.


def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
        else
        current_line = [ ]
        katz_deli.each_with_index do |name, index|
            current_line << "#{index+1}. #{name}"
            end
        current_line = current_line.join(" ")
        puts "The line is currently: #{current_line}"
        end
    end

def take_a_number(katz_deli, name)
    katz_deli = katz_deli.push(name)
    index = katz_deli.index(name)
    puts "Welcome, #{name}. You are number #{index+1} in line."
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
        else
        name = katz_deli.first
        puts "Currently serving #{name}."
        katz_deli.shift
end
end