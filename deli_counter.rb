katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]

def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else 
    current_line = "The line is currently:"
    deli.each_with_index do |name, i| 
      current_line << " #{i+1}. #{name}"
    end
    puts current_line
  end
end

def take_a_number(deli, name)
  if deli.length == 0
    deli.push(name)
    puts "Welcome, #{deli.last}. You are number #{deli.length} in line."
  elsif deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
  else
    puts "There is nobody on line."
  end
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end

