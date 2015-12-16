katz_deli = []

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  
  else 
    current_line = katz_deli.each_with_index.map do |name, num|
    "#{num+1}. #{name}"
    end
    puts "The line is currently: " + current_line.join(" ")
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  if katz_deli == []
    puts "Welcome, #{name}. You are number 1 in line."
  else
    puts "Welcome, #{name}. You are number " + katz_deli.length.to_s + " in line."
  end
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + katz_deli.shift.to_s + "."
  end
end