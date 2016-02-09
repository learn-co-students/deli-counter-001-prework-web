katz_deli = []

def line(katz_deli)
  if katz_deli[0] == nil
    puts "The line is currently empty."
  else
    message = "The line is currently:" 
    katz_deli.each_with_index do |name, index|
      message2 = " #{index + 1}. #{name}"
      message << message2
    end
    puts message
  end
end

def take_a_number(array, name)
  array.push(name)
  position_in_line = array.length
  puts "Welcome, #{name}. You are number #{position_in_line} in line."
end

def now_serving(array)
  if array[0] == nil
    puts "There is nobody waiting to be served!"
  else
    first = array[0]
    puts "Currently serving #{first}."
    array.shift
  end
end

