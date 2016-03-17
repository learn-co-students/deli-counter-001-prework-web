# Write your code here.
def line(array)
  if array.length > 1
    sentence = "The line is currently:"
    array.each {|name|
    sentence += " #{array.index(name) + 1}. #{name}" }
    puts sentence
  else
    puts "The line is currently empty."
  end
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.size} in line."
end

def now_serving(array)
  if array.length > 1
    puts "Currently serving #{array.first}."
    array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end