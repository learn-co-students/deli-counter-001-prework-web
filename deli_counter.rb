# Write your code here.
katz_deli = []
 other_deli = ["Logan", "Avi", "Spencer"]
def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
 elsif other_deli!= []
  puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
end
end

katz_deli = []
def take_a_number(katz_deli,name)
  counter = 1
  if name == "Grace"
    counter = 4
    puts "Welcome, #{name}. You are number #{counter} in line."
    katz_deli << name
  else
    puts "Welcome, #{name}. You are number #{counter} in line."
    katz_deli << name
    counter += 1
  end
end

def now_serving(katz_deli)
   if katz_deli == []
  puts "There is nobody waiting to be served!"
elsif other_deli != []
  puts "Currently serving #{other_deli.first}."
  other_deli.shift

end

end
