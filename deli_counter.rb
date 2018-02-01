# Write your code here.

def line(deli_line)
    if deli_line.length == 0
        puts "The line is currently empty."
    else
        line_desc = ""
        deli_line.each_with_index do |customer, idx|
            line_desc << " #{idx + 1}. #{customer}"
        end
        puts "The line is currently:#{line_desc}"
    end
end

def take_a_number(deli_line, name)
    deli_line << name
    puts "Welcome, #{name}. You are number #{deli_line.length} in line."
end

def now_serving(deli_line)
    if deli_line.length == 0
        puts "There is nobody waiting to be served!"
    else
        next_person = deli_line.shift
        puts "Currently serving #{next_person}."
        next_person
    end
end