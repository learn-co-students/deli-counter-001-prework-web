katz_deli = []

def line(katz_deli)

if katz_deli == []
  puts "The line is currently empty."
else
  message_parttwo = []
  message_partone = "The line is currently: "
  katz_deli.each_with_index do |name, index|
  place_in_line = index + 1
    message_each_person = "#{place_in_line}. #{name} "
    message_parttwo.push(message_each_person)
  end

output = message_partone << message_parttwo = message_parttwo.join[0...-1]
  puts "#{output}"
end
end

def take_a_number(katz_deli, person)
katz_deli.push(person)
number_in_line = katz_deli.index(person) + 1
puts "Welcome, #{person}. You are number #{number_in_line} in line."
end

def now_serving(katz_deli)
if katz_deli == []
  puts "There is nobody waiting to be served!"
else
##find the method that lets you retrive the object, given the index. index (0), puts "serving that person" and the remove that object from the array"
first_person = katz_deli[0]
  puts "Currently serving #{first_person}."
  katz_deli.shift
end
end





