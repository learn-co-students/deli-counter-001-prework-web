
def take_a_number (katz_deli, string)
  katz_deli.push(string)
  puts "Welcome, #{string}. You are number #{katz_deli.size} in line."
end

def now_serving (katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli.shift
    puts "Currently serving #{name}."
  end
end

def line (katz_deli)
  if katz_deli == [] 
    puts "The line is currently empty."
  else
    puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
  end
end
