def line(katz_deli)
  if katz_deli.empty? == false
    names_list = "The line is currently:"
    katz_deli.each_with_index do|value, index|
    names_list << " #{index+1}. #{value}"
    end
    puts names_list
  elsif katz_deli.empty? == true
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  position = katz_deli.index(name)
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
  return name, position
end

def now_serving (katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  elsif katz_deli.empty? == false
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end