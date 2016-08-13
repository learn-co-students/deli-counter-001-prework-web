def line (array)
  if array.size == 0
    puts "The line is currently empty."
  else
    new_array = []
    array.each_with_index {|name, i| new_array << "#{i + 1}. #{name}"}
    puts "The line is currently: #{new_array.join(" ")}"
  end
end

def take_a_number (array, name)
  array << name
  puts "Welcome, #{name}. You are number #{array.size} in line."
end

def now_serving (array)
  puts array.size == 0?  "There is nobody waiting to be served!" : "Currently serving #{array.shift}."
end
