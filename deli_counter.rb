katz_deli = [ ] 

def line(katz_deli)
  if katz_deli.empty? == true
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
katz_deli.each_with_index do |x, index|
  current_line += " #{index+1}. #{x}"
end
puts "#{current_line}"
end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else puts "Currently serving #{katz_deli.shift}."
  end
end


