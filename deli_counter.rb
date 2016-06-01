katz_deli = []

def take_a_number(array, name)
  array.push(name)
  new_index = array.index(name)
  puts "Welcome, #{name}. You are number #{new_index + 1} in line."
end


def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
  name = array.shift
  puts "Currently serving #{name}."
  end
end

def line(array)
if array == []
    puts "The line is currently empty."
else
  call = "The line is currently:"
  array.each_with_index do |val, index|
    call += " #{index + 1}. #{val}"
  end
  puts call
end
end
