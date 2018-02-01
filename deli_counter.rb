def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    phrase = "The line is currently:"
    katz_deli.each_with_index do |x, index|
    phrase << " #{index + 1}. #{x}"
    end
    puts phrase
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name) 
  position = katz_deli.length
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli.shift}."
  end
end

