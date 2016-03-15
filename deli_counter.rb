# Write your code here.
katz_deli = []

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    array.each do |name, num|
      message << " #{array.index(name) + 1}. #{name}"
    end
    puts message
  end
end

def take_a_number(array, name)
  array << name
  puts "Welcome, #{name}. You are number #{array.index(name) + 1} in line."
end

def now_serving(array)
  name = array.first
  array.delete(name)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{name}."
  end
end