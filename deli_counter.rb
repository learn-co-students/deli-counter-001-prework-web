def line(katz_deli)
  if katz_deli == []
    status = "The line is currently empty."
  else
    status = "The line is currently:"
    katz_deli.each_with_index do |name,index|
      status = status + " #{index + 1}. #{name}"
    end
  end
  puts status
end

def take_a_number(katz_deli, name)
  position = katz_deli.length.to_i + 1
  puts "Welcome, #{name}. You are number #{position} in line."
  katz_deli.push(name)
  return katz_deli
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    next_up = katz_deli.shift
    puts "Currently serving #{next_up}."
  end
end
