katz_deli = []

def line(katz_deli)
    if katz_deli.length==0
        puts "The line is currently empty."
    else
        puts "The line is currently: "
        n=1
        while n <= katz_deli.length
            puts n#.to_s + ". "+ katz_deli[n].to_s
            n+=1
        end
    end
    
end

def take_a_number(katz_deli, name)
    return katz_deli.push(name)
end

def now_serving(katz_deli)
    if katz_deli.length==0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}"
        katz_deli.shift
    end
end