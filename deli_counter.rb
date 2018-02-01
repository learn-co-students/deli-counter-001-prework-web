katz_deli = []

def line(array)
  if array == []
      puts "The line is currently empty."
    else 
      position = "The line is currently:"
      array.each_with_index {|name, index|
      position<<" #{index+1}. #{name}"}
      puts position
  end
end

def take_a_number(array, name)
  array.push(name)
  number = array.count
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(array)
  if array == []
      puts "There is nobody waiting to be served!"
    else
      name = array[0]
      array.shift
      puts "Currently serving #{name}."
  end
end