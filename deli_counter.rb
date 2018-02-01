katz_deli = []

def line(katz_deli) 
   lines = []
if katz_deli.empty? == true
  puts "The line is currently empty."
else katz_deli.each do |name| 
   number = katz_deli.index(name) + 1
   lines << "#{number}. #{name}"
end 
lines = lines.join(" ")
   puts "The line is currently: #{lines}"

end
end
def take_a_number(katz_deli, name)
katz_deli << name
number = katz_deli.index(name) + 1
puts "Welcome, #{name}. You are number #{number} in line."
end 
def now_serving(katz_deli)
  if katz_deli.empty? == true 
puts "There is nobody waiting to be served!"
else
puts "Currently serving #{katz_deli[0]}."
  katz_deli = katz_deli.shift
  end 
end 