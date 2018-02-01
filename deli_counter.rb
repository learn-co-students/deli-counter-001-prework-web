# Write your code here.

def line(array)
    if array.count == 0
        puts "The line is currently empty."
        else
        output_value = ""
        array.each_with_index do |name, index|
            output_value = "#{output_value} #{index+1}. #{name}"
        end
        puts "The line is currently:#{output_value}"
    end
end

def take_a_number(array,name)
    array.push(name)
    length = array.count
    puts "Welcome, #{name}. You are number #{length} in line."
end

def now_serving(array)
    if array.count == 0
        puts "There is nobody waiting to be served!"
        else
        name = array.shift
        puts "Currently serving #{name}."
    end
end

