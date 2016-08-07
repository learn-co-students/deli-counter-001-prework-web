def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    katz_deli.each_with_index do |value, index|
      message += " #{index.to_i+1}. #{value}"
  end
  puts "#{message}"
end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  if katz_deli.length == 0
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
else
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else 
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end


