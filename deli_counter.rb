def line(array)
  if (array.length == 0)
    puts "The line is currently empty."
  else
      puts "The line is currently: 1. #{array[0]} 2. #{array[1]} 3. #{array[2]}"
  end
end

def take_a_number(array,string)
  array[array.length] = string
  puts "Welcome, #{string}. You are number #{array.length} in line."
end

def now_serving(array)
  if (array.length > 0)
    puts "Currently serving #{array[0]}."
    array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
