# Write your code here.
def line(deli_line)
  output = ""
  if deli_line.count == 0
    output += "The line is currently empty."
  else
    output += "The line is currently:"
    deli_line.map.with_index{ |name, i| output += " #{i+1}. #{name}" }
  end
  puts output
end

def take_a_number(deli_line, name)
  deli_line << name
  puts "Welcome, #{name}. You are number "\
    "#{deli_line.find_index(name) + 1} in line."
end

def now_serving(deli_line)
  if deli_line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line.shift}."
  end
end