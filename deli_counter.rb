def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    katz_deli.each_with_index{|value, index| string << " #{index + 1}. #{value}"}
    puts string
end
end

def take_a_number(katz_deli, next_person)
    katz_deli.push(next_person)
    puts "Welcome, #{next_person}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
end
end
