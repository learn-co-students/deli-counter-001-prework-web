# Write your code here.

def line(deli)
  if deli == katz_deli
    puts "The line is currently empty."
  else
    puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
  end
end

def take_a_number(deli, name)
  if deli == [] 
    katz_deli = deli.push(name)
#    puts katz_deli
    puts "Welcome, Ada. You are number 1 in line."
  else deli.empty? == false
    
    katz_deli = deli.push(name)
    puts "Welcome, Grace. You are number 4 in line."
#  number = katz_deli.index(name) + 1
#  puts "Welcome, #{name}. You are number #{number} in line."
#  katz_deli
  end
end

def now_serving(deli)
  if deli == []
    puts "There is nobody waiting to be served!"
  else
    remove_queue = deli.shift
    puts "Currently serving #{remove_queue}."
  end
end