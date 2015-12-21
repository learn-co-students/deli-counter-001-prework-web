# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli.empty? == true
    puts "The line is currently empty."
  else
    line_status = "The line is currently:"
    katz_deli.each_with_index do |value, index|
      line_status += " #{index + 1}. #{value}"
    end
    puts line_status
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end

def now_serving(other_deli)
  if other_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{other_deli.shift}."
  end
end
