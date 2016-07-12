# Write your code here.
katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"] 

def line(other_deli)
    if (other_deli.length == 0) 
      puts "The line is currently empty."
    else  
      current_line = "The line is currently: "
      other_deli.each_with_index {|name, index| current_line += "#{index + 1}. #{name} "}
      puts current_line.strip
    end
end

def take_a_number(other_deli, name) 
    other_deli.push(name) 
    puts "Welcome, #{name}. You are number #{other_deli.length} in line."
end  

def now_serving(other_deli)
  if other_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{other_deli[0]}."
    other_deli.shift
  end
end      