# Write your code here.
katz_deli = []

def take_a_number (katz_deli, name)
  position = katz_deli.size
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{position + 1} in line."
  return katz_deli
end

def now_serving (katz_deli)
  first_person = katz_deli[0]
  if katz_deli.empty? == false
    puts "Currently serving #{first_person}."
    katz_deli.delete(first_person)
  else
  puts "There is nobody waiting to be served!"
  end
end

def line (katz_deli)
  if katz_deli.empty? == false
    line_message = "The line is currently:"
    katz_deli.each_with_index do |name, position|
    position = position + 1
    string_position = position.to_s
    customer = " " + string_position + ". " + name
    line_message += customer
    end
    puts line_message
  else
    puts "The line is currently empty."
  end
end