def line(queue)
    write = "The line is currently"
    
    l = queue.length
    if l == 0 
        write += " empty.";
    else 
        write += ":"
        queue.each.with_index(1) do |value, index|
            write += " #{index}. #{value}"
        end
    end
    puts write
end

def take_a_number(queue, name)
    queue.push(name)
    puts "Welcome, #{name}. You are number #{queue.length} in line."
    return queue
end

def now_serving(queue)
    
    if queue.length == 0 
        puts "There is nobody waiting to be served!"
    else 
        person = queue.shift()
        puts "Currently serving #{person}."
    end
    return queue
end

















