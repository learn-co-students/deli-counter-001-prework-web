katz_deli = []

def take_a_number(katz_deli, new_name)
  new_number = katz_deli.length + 1
  katz_deli.push(new_name)
  puts "Welcome, #{new_name}. You are number #{new_number} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0 then
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end

def line(katz_deli)
  if katz_deli.length == 0 then
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each_with_index do |name, position|
      current_line += " #{(position + 1)}. #{name}"
    end
    puts current_line
  end
end
