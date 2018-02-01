# Write your code here.

def line(array)
    if array.length==0
        puts "The line is currently empty."
    else
        phrase = "The line is currently:"
        for times in 1..(array.length) do
        phrase = phrase + " #{times}. #{array[times-1]}"
    end
        puts phrase
    end
end
        

def take_a_number(array, name)
    if array.length==0
        array.push(name)
        puts "Welcome, #{name}. You are number 1 in line."
    else
        
        array<<(name)
        puts "Welcome, #{name}. You are number #{array.length} in line."
    end
    end

def now_serving(array)
    if array.length==0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array.first}."
        array.shift
        end
    end

