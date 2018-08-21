# Write your code here.

def take_a_number(katz_deli, name)
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

"The line is currently: 1. Logan 2. Avi 3. Spencer"
def line(katz_deli)
    if katz_deli.length > 0
        line = "The line is currently:"
        (1..katz_deli.length).each do |linePosition|
            line += " #{linePosition}. #{katz_deli[linePosition-1]}"
        end
        puts line
    else
        puts "The line is currently empty."
    end
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        currentPatron = katz_deli.shift
        puts "Currently serving #{currentPatron}."
    end
end


