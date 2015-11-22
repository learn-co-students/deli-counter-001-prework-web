katz_deli = []

def take_a_number(katz_deli, new_name)
  katz_deli.push(new_name)
  puts "Welcome, #{new_name}. You are number #{katz_deli.index(new_name) + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end

def line(katz_deli)
  string = "The line is currently:"
  if katz_deli == []
    string = "The line is currently empty."
  else katz_deli.each do |name|
    string.concat(" #{katz_deli.index(name) + 1}. #{name}")
    end
  end
puts string
end

