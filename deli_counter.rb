# Write your code here.
def line(current_line)
  line_str = "The line is currently:"
  if current_line.length > 0
    current_line.each { |customer| line_str << " #{current_line.index(customer) + 1}. #{customer}" }
    puts line_str
  else
    puts "The line is currently empty."
  end
end

def take_a_number(current_line,name)
  current_line.push(name)
  puts "Welcome, #{name}. You are number #{current_line.rindex(name) + 1} in line."
end

def now_serving(current_line)
  if current_line.length < 0
    puts "Currently serving #{current_line.first}."
    current_line.delete_at(0)
  else
    puts "There is nobody waiting to be served!"
  end
end
