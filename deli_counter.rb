katz_deli = []

def line(katz_deli)
  if katz_deli.any?
    entire_line = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      entire_line << " #{index + 1}. #{name}"
    end
    puts entire_line
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.any?
    next_in_line = katz_deli.shift
    puts "Currently serving #{next_in_line}."
  else
    puts "There is nobody waiting to be served!"
  end
end