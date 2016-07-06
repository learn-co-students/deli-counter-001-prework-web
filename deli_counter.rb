def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    line = "The line is currently:"
    katz_deli.each_with_index { |name, index| line << " #{index + 1}. #{name}" }
    puts line
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  number = katz_deli.count
  puts "Welcome, #{name}. You are number #{number} in line."
end


def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
