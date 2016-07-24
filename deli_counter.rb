# Write your code here.


def line(array)
    if array.length == 0
        puts "The line is currently empty."
    else
        string = "The line is currently:"
        array.each_with_index do |name, index|
            string << (" #{index + 1}. #{name}")
            end
        puts string
    end
end
        
def take_a_number(array, name)
    array << name
    puts "Welcome, #{name}. You are number #{array.length} in line."
end

def now_serving(array)
    if array.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array.first}."
        array.shift
    end
end

# Part one
# if empty say empty. or else for each person in line list number and name
# part two
# add each person to string, and give them the welcome and the number (length of string) in the line
# final part is loop where each time someone served they come out until no one left. 