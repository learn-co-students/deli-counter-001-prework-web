def line(array)
  if array.empty?
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    for i in 0...array.size
      string = string + " #{i+1}. #{array[i]}"
    end
    puts string
  end
end

def take_a_number(array, name)
  array << name
  number = array.size
  puts "Welcome, #{name}. You are number #{number} in line."
  return name, number
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    person = array.shift
    puts "Currently serving #{person}."
  end
end