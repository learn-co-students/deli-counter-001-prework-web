# Write your code here.
katz_deli = []
def take_a_number(katz_deli, name)
  puts "Welcome, #{name}. You are number #{katz_deli.length + 1} in line."
  katz_deli.push(name)
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
  if katz_deli == []
    puts "The line is currently empty."
  else 
    string = "The line is currently:"
    katz_deli.each_with_index do |name, index|
    string += " #{index+1}. #{name}" 
  end
  puts string
  end
end 
