#people in line
katz_deli = []

def line(katz_deli)
    #puts a string showing everyone's current place in line
    if katz_deli.length > 0
        puts "The line is currently: 1. #{katz_deli[0]} 2. #{katz_deli[1]} 3. #{katz_deli[2]}"
    end
    #puts a string if there is nobody in line
    if katz_deli.length < 1
        puts "The line is currently empty."
    end
end


        
def take_a_number(katz_deli, name)
   	#adds a person to the line 
    katz_deli << name
    #puts a string that welcomes the person and tells their position in line
    puts "Welcome, #{name}. You are number " + (katz_deli.index(name) + 1).to_s + " in line."
end

def now_serving(katz_deli)
    #puts a string that calls the next person in line and then removes them from the front
    if katz_deli.length > 0
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
    #puts a string if there is nobody in line 
    if katz_deli.length < 1
        puts "There is nobody waiting to be served!"
    end
end