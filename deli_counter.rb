def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:" 
    katz_deli.each_with_index do |value, index| 
      message += " #{index + 1}. #{value }"
    end
    puts "#{message}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  index = katz_deli.index(name)
  index += 1
    puts "Welcome, #{name}. You are number #{index} in line."
    return "Welcome, #{name}. You are number #{index} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == true
    puts "There is nobody waiting to be served!"
  else
    name = other_deli.shift
    puts "Currently serving #{name}."
  end
end  




