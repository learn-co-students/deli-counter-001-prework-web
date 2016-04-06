# Write your code here.

katz_deli = []

def line(katz_deli)
    if katz_deli.count == 0
        puts "The line is currently empty."
    else
        list_people_on_line = []
        katz_deli.each.with_index(1){|name, index|
            list_people_on_line.push("#{index}. #{name}")}
        puts "The line is currently: #{list_people_on_line.join(" ")}"
    end
end

def take_a_number(katz_deli, name)
    welcome_messages = []
    katz_deli.push(name)
    katz_deli.each.with_index(1){|name, index|
        welcome_messages.push("Welcome, #{name}. You are number #{index} in line.")}
    puts welcome_messages.pop
end

def now_serving(katz_deli)
    if katz_deli.empty? == false
        puts "Currently serving #{katz_deli.shift}."
    else
        puts "There is nobody waiting to be served!"
    end
end

#def now_serving(katz_deli)
#    until katz_deli.empty?
#        puts "Currently serving #{katz_deli.shift}."
#    end
#    puts "There is nobody waiting to be served!"
#end