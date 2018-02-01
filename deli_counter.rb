katz_deli = []

def take_a_number(katz_deli, name_of_person_joining)
    katz_deli.push(name_of_person_joining)
    puts "Welcome, #{name_of_person_joining}. You are number #{katz_deli.length} in line."
    return name_of_person_joining, line_position = katz_deli.length
end

def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    elsif
        next_person = katz_deli.shift
        puts "Currently serving #{next_person}."
    end
   return katz_deli
end

def line(katz_deli)
    if
        katz_deli.length == 0
        puts "The line is currently empty."
    elsif
        line_string = "The line is currently:"
        katz_deli.each_with_index do |name, index|
            line_string += " #{index + 1}. #{name}"
        end
      puts line_string
    end
end