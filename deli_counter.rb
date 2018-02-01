def line(deli)
    if deli.empty?
        puts "The line is currently empty."
    else
        current = "The line is currently:"
        deli.each_with_index { |name, index| current << " #{index + 1}. #{name}" }
        puts current
    end
end

def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli.first}."
        deli.shift
    end
end
# Write your code here.
