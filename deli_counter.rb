# Write your code here.
katz_deli=[]; # Noone at the beginning of the day.

def line(katz_deli)
    length=katz_deli.count
    if length==0
        puts "The line is currently empty."
    else
    lines = "The line is currently:"
        katz_deli.each_with_index do |customers, index|
            lines.concat (" #{index+1}. #{customers}")
        end
        puts lines;
    end

end

def take_a_number(katz_deli, name)
    position= katz_deli.count;
    if position==0
        katz_deli.unshift(name)
        position+=1;
        puts "Welcome, #{name}. You are number #{position} in line."
    else
        katz_deli.push(name)
        position+=1;
        puts "Welcome, #{name}. You are number #{position} in line."
    #return [position, name]
    end
end

def now_serving(katz_deli)
    if katz_deli.count==0
        puts "There is nobody waiting to be served!"
    else
        customer= katz_deli[0]
        puts "Currently serving #{customer}."
        katz_deli.shift;
    end
end

