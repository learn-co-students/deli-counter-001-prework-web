def line(deli)
    if deli.count == 0
        puts "The line is currently empty."
        else
        line = "The line is currently:"
        deli.each.with_index(+1) do |name, x|
            line << " #{x}. #{name}"
        end
        puts line
    end
end


def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
    
end

def now_serving(deli)
    if deli. count == 0
        puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{deli.first}."
    deli.shift
    end
end
