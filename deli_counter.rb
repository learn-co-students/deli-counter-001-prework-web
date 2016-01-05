# Write your code here.
katz_deli = []

def line(array)
  message = "The line is currently:"

  if array.count == 0
    message = "The line is currently empty."
  else
    array.each_with_index do |name, index|
      index = index + 1
      message = message + " #{index}. #{name}"
    end
  end

  puts message
end

def take_a_number(array, new_person)
  array.push(new_person)
  number = array.count
  puts "Welcome, #{new_person}. You are number #{number} in line."
end

def now_serving(array)
  if array.count == 0
    puts "There is nobody waiting to be served!"
  else
    calloutPerson = array.first
    puts "Currently serving #{calloutPerson}."
    array.shift
  end
end