katz_deli = []

def line(array)
    if array.count > 0
        current_line = "The line is currently:"
        array.each.with_index(1) do |name, place|
            current_line << " #{place}. #{name}"
        end
        puts current_line
    else
    puts "The line is currently empty."
    end
end


def take_a_number(katz_deli, new_person)
    katz_deli.push(new_person)
    puts "Welcome, #{new_person}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
    if katz_deli.count > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
    else
    puts "There is nobody waiting to be served!"
    end
end