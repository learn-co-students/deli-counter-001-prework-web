katz_deli = []

def line(katz_deli)
    
    people_in_line = "The line is currently:"

    if katz_deli.length == 0
        puts "The line is currently empty."
    elsif katz_deli.length > 0
        i = 0
        while i < katz_deli.length
            people_in_line << " #{i+1}. #{katz_deli[i]}"
            i+=1
        end
        puts people_in_line
    end

end

def take_a_number(katz_deli, name)

    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
    
end

def now_serving(katz_deli)

    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    elsif katz_deli.length > 1
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end

end
