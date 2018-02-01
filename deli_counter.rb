# Write your code here.

def take_a_number(deli_line, name)
  deli_line.push("#{name}")
  puts "Welcome, #{name}. You are number #{deli_line.length} in line."
end

def line(deli_line)
  if deli_line.empty?
    puts "The line is currently empty."
    return
  end

  str = ""
  deli_line.each_index do |index|
    str.concat(" #{index + 1}. #{deli_line[index]}")
  end
  puts "The line is currently:" + str
end

def now_serving(deli_line)
  if deli_line.empty?
    puts "There is nobody waiting to be served!"
    return
  end
  puts "Currently serving " + deli_line.shift + "."
end
