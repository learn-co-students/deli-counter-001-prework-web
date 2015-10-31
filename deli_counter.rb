katz_deli = []

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.count > 0
    puts "Currently serving #{katz_deli.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end


def line(katz_deli)
  if katz_deli.count == 0
    puts "The line is currently empty."
  else
    line = []
    katz_deli.each_with_index {|name, index| line.push("#{index +1 }.", name)}
    puts "The line is currently: #{line.join(" ")}"
  end
end
