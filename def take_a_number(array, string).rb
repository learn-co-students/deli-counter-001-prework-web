def take_a_number(array, string)
position = 1
if array.length == 0
  array.push(string)
  array.each do |i|
  puts "Welcome, #{i}. You are number #{position} in line."
  position += 1
end
end
end