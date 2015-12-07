katz_deli = []

def line(katz_deli)
    if katz_deli.length==0
        puts "The line is currently empty."
    else
        string = "The line is currently: "

        katz_deli.each.with_index do |n, i|
            string.concat("#{i+1}. #{n} ")
            end
        puts string.strip
        
    end
    
end

def take_a_number(katz_deli, name)
    puts "Welcome, #{name}. You are number #{katz_deli.length+1} in line."
    return katz_deli.push(name)
end

def now_serving(katz_deli)
    if katz_deli.length==0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end

=begin Additional Spec
 def get_a_number(array)
    if array.length != 0
        i=array.last+1
        array.push(i)
        return i
    else
        i= array.length+1
        array.push(i)
        return i
    end
end

def serve_customer(array)
    array.shift
end

