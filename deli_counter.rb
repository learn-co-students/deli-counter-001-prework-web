def line (katz_deli) 

  if katz_deli.length <= 0
    puts "The line is currently empty."
  else 
    line_current = "The line is currently:"
    katz_deli.map.with_index {|name, i| line_current <<  " #{i+1}. #{name}"}
    puts line_current
  end 
end

def take_a_number (katz_deli, person)
  katz_deli << person 
  puts "Welcome, #{person}. You are number #{katz_deli.size} in line."
end

def now_serving (katz_deli)
  if katz_deli.size == 0 
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli.shift}."
  end
end
