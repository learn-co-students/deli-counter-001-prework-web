def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    names = ""
    katz_deli.each_with_index do |name, index|
        names += " #{index + 1}. #{name}"
    end
    puts "The line is currently:#{names}"
  end
end

def take_a_number(katz_deli, name)
  if katz_deli == []
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number 1 in line."
  else
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else 
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end