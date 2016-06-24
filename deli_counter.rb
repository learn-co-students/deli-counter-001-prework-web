katz_deli = Array.new
def line(array)
  if array.any? == false
    puts "The line is currently empty."
  else
    output = "The line is currently:"
  array.each_with_index.map do |name,index|
output <<  " #{index+1}. #{name}"
  end
  puts output
  end
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."

end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
  puts "Currently serving #{array.first}."
array.shift
end
end
