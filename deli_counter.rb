def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each_with_index {|guest, i| current_line << " #{i +1}. #{guest}"}
    puts current_line
  end
end

def take_a_number(katz_deli, name)
     katz_deli.push(name)
     place = katz_deli.index(name) +1
     puts "Welcome, #{name}. You are number #{place} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
   end
end
