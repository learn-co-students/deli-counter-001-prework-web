# Write your code here.
katz_deli = []

def line(katz_deli)
 if katz_deli.size <= 0
   puts "The line is currently empty."
end

counter = 0
line_list = []
while counter < katz_deli.size
  line_list.push("#{counter + 1}. #{katz_deli[counter]}")
  counter += 1
end
if line_list.size > 0
  puts "The line is currently: #{line_list.join(' ')}"
end
end

def take_a_number(katz_deli, name)
#returns  the name and the position in line
  katz_deli.push(name)
  pos = katz_deli.index(name) + 1
  puts "Welcome, #{name}. You are number #{pos} in line."
end

def now_serving(katz_deli)
  current_line = katz_deli.size
  if current_line < 1
      puts "There is nobody waiting to be served!"

elsif current_line > 1
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.delete_at(0)
end
end
