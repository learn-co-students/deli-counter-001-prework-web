katz_deli = []

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    array.each_with_index do |name, index|
      current_line << " #{index+1}. #{name}"
    end
    puts current_line
  end
end

def take_a_number(array, string)
  if array.length == 0
    array.unshift(string)
    puts "Welcome, #{string}. You are number #{array.length} in line."
  elsif array.length > 0
    array << string
    puts "Welcome, #{string}. You are number #{array.length} in line."
  end
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    new_array = array.shift
    puts "Currently serving #{new_array}."
  end
end