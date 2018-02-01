katz_deli = []

def line(array)
str = "The line is currently:"
  if array.empty? == false
    array.each.with_index(1) do |name, index|
      str += " #{index}. #{name}"
    end
    puts str
  elsif array.empty? == true
    puts "The line is currently empty."
  end
end

def take_a_number(array, name)
  array.push(name)
  position = array.index(name) + 1
  puts "Welcome, #{name}. You are number #{position} in line."
  return name
  return position
end

def now_serving(array)
  if array.empty? == true
    puts "There is nobody waiting to be served!"
  elsif array.empty? == false
    puts "Currently serving #{array[0]}."
    array.shift
  end
end