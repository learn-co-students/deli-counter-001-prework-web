# Write your code here.
katz_deli = []

def line(katz_deli)
array = []
  if katz_deli.length == 0
    answer = "The line is currently empty."
  else
    katz_deli.each_with_index do |name, index|
    ind = index + 1
    array << "#{ind}. #{name}"
    answer = "The line is currently: " + array.join(" ")
  end
  end
  puts answer
end

def take_a_number(katz_deli, name)
  if katz_deli.length == 0
    katz_deli.unshift(name)
    puts "Welcome, #{name}. You are number 1 in line."
  else katz_deli.length > 0
    katz_deli.push(name)
    number = katz_deli.length
    puts "Welcome, #{name}. You are number #{number} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
