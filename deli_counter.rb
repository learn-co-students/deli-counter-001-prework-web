# Write your code here.
def line(array)
  if array == []
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    array.each_with_index do |name, index|
      current_line << " #{index + 1}. #{name}"
    end
    puts current_line
  end
end

def take_a_number(array, name)
  if array == []
    array << name
    puts "Welcome, #{name}. You are number #{array.size} in line."
  else
    array << name
    puts "Welcome, #{name}. You are number #{array.size} in line."
  end
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.first}."
    array.shift
  end
end
