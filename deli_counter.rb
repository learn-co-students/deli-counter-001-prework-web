
def take_a_number(deli_line, name)
  deli_line << name
  position = deli_line.length
  puts "Welcome, #{name}. You are number #{position} in line."
  
end


def now_serving(other_deli)
  if other_deli.any?
  puts "Currently serving #{other_deli[0]}."
  other_deli.shift
  other_deli
else
  puts "There is nobody waiting to be served!"
end

end

def line(other_deli)
  if other_deli.any?
    puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
  else
puts "The line is currently empty."
  end
end