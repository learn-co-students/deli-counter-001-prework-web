# Write your code here.
def take_a_number(katz_deli,name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
  puts "Currently serving #{katz_deli.shift}."
end
end


def line(katz_deli)
  
  if katz_deli == []
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each_with_index do |name, x|
      current_line += " #{x+1}. #{name}"
    end
    puts current_line
end
end