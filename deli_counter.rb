def take_a_number(array, name)
# Write your code here.
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.size} in line."
  array.size
end

def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else
    string = "The line is currently:"
    array.each_with_index do |name, index|
      string << " #{index+1}. #{name}"
    end
    puts string
  end
end

def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
  end

  array.shift
end