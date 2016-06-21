def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else katz_deli.count != 0
    other_delis = "The line is currently:"
    katz_deli.each_with_index do |name, index|
    other_delis += " #{index+1}. #{name}"
  end
  puts other_delis
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli = katz_deli.shift
  end
end
