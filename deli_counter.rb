# Write your code here
def line(katz_deli)
  if katz_deli == []
  puts "The line is currently empty."
else 
  puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
end
end
def take_a_number(katz_deli, name)
  katz_deli.push(name)
  num = katz_deli.size
  puts "Welcome, #{name}. You are number #{num} in line."
  end
def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end

