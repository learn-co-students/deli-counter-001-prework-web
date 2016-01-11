# Write your code here.

katz_deli = []

def line(array)
if array.length > 0
puts "The line is currently: 1. #{array[0]} 2. #{array[1]} 3. #{array[2]}"
# Instead of using 1. 2. 3. I can put the code below to find the actual position
# #{array.find_index(array[0])+1}
else
puts "The line is currently empty." 
end
end

def take_a_number (array, name)
array << name
#array[-1]
puts "Welcome, #{array[-1]}. You are number #{array.find_index(array[-1])+1} in line."
end

def now_serving(array)
  if array.length > 0
  puts "Currently serving #{array[0]}."
  array.shift
  else
  puts "There is nobody waiting to be served!"
end
end