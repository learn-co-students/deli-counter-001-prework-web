
def line(deli)
    if deli.size == 0
        puts "The line is currently empty."
    else
        puts "The line is currently: 1. #{deli[0]} 2. #{deli[1]} 3. #{deli[2]}"
end
end

def take_a_number(deli, name)
    deli << name
    puts "Welcome, #{name}. You are number #{deli.size} in line."
end

def now_serving(deli)
    if deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli.shift}."
end
end 