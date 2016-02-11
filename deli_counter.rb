# Write your code here.

def line(array)
  new_array = []
  if array == []
    puts "The line is currently empty."
    return "The line is currently empty."
  else
  array.each_with_index do |item,index|
    new_array << "#{index + 1}. #{item}"
  end
  puts "The line is currently: #{new_array.join(" ")}"
  return "The line is currently: #{new_array.join(" ")}"
  end
end

def take_a_number(array,name)
  array << name
  x = array.index(name) + 1
  puts  "Welcome, #{name}. You are number #{x} in line."
  return x
end

def now_serving(array)
  if array == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end

end






