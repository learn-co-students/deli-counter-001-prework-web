# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently: "
    katz_deli.each_with_index do |name, indx|
    current_line += "#{indx + 1}. #{name} "
    end
    puts current_line.chop
  end
end


def take_a_number(katz_deli, name)
  katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  elsif katz_deli.size != 0
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
