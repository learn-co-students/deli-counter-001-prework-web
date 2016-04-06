katz_deli = []

def line(array)
  if array == []
    puts "The line is currently empty."
    elsif array != []
    current_line = "The line is currently:"
    array.each_with_index {|name, index| current_line << " #{index + 1}. #{name}"}
    puts current_line
  end
end

def take_a_number(array, string)
  array.push(string)
  array.index(string)
  puts "Welcome, #{string}. You are number #{array.index(string) + 1} in line."
end

def now_serving(array)
  if array != []
    puts "Currently serving #{array.first}."
  array.shift
    elsif array == []
    puts "There is nobody waiting to be served!"
  end
end

