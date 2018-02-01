katz_deli = []

def line(katz_deli)
  line_position = [] 
  if katz_deli.count > 0
    katz_deli.each_with_index do |person, position| 
      position_info = "#{position + 1}. #{person}"
      line_position << position_info
    end
    puts "The line is currently: " + line_position.join(" ") 
  else
    puts "The line is currently empty."
  end
end 

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end 

def now_serving(katz_deli)
  if katz_deli.count > 0 
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else 
    puts "There is nobody waiting to be served!"
  end 
  katz_deli
end 