
def take_a_number(array, string)
  array << string
  puts "Welcome, #{string}. You are number #{array.length} in line."
end

def now_serving(array) 
if array.length == 0
  puts "There is nobody waiting to be served!"
else 
puts "Currently serving #{array.first}."
array.shift()
end
end


def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    array.each_with_index do | person, index |
      current_line << " #{index + 1}. #{person}"
  end
  puts current_line
end
end

