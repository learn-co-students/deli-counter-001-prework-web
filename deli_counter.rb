# Write your code here.
katz_deli = []

def line(katz_deli)
  arr = "The line is currently:"
  if katz_deli != [] 
  x = katz_deli.length 
  count = 0
  loop do
    arr << " #{count+1}. #{katz_deli[count]}"
    count += 1
    break if count == x
  end
  puts "#{arr}"
  else 
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, person)
  if katz_deli != []
puts "Welcome, #{person}. You are number #{katz_deli.index(katz_deli.last) + 2} in line."
else
  puts "Welcome, #{person}. You are number 1 in line."
end
katz_deli << person
end

def now_serving(katz_deli)
if katz_deli != []
puts "Currently serving #{katz_deli.first}."
else
puts "There is nobody waiting to be served!"
end
katz_deli.shift
end


#def take_a_number(katz_deli, person)
 # new_joiner = []
  #person.each do |x| 
  #new_joiner << puts "#{x} #{katz_deli.index(katz_deli.last)+1}"
#end
 # new_joiner
#end