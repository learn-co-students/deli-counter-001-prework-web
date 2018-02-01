katz_deli = []

def line(katz_deli)
  if katz_deli == []  
    puts "The line is currently empty."
  else
    not_empty = "The line is currently:"
    katz_deli.each_with_index do |name, index| 
      not_empty << " #{index + 1}. #{name}"
    end
  puts not_empty
  end
end 

def take_a_number(katz_deli, name)
  katz_deli << name
  place_in_line = katz_deli.index(name) + 1
  puts "Welcome, #{name}. You are number #{place_in_line} in line."
end

def now_serving(katz_deli)
  if katz_deli == [] 
    puts "There is nobody waiting to be served!"
  else 
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end


