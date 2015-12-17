katz_deli = []

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    deli_line = []
    katz_deli.each_with_index do |name, index|
      name_with_position = "#{index+1}. #{name}"
      deli_line.push(name_with_position)
    end
    puts "The line is currently: #{deli_line*" "}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end