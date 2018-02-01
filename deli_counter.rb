def line(arr)
  return puts "The line is currently empty." if arr.empty?
  string = "The line is currently:"
  arr.each_with_index do |name, idx|
    string += " #{idx + 1}. #{name}"
  end
  puts string
end

def take_a_number(arr, name)
  arr << name
  puts "Welcome, #{name}. You are number #{arr.index(name) + 1} in line."
end

def now_serving(arr)
  return puts "There is nobody waiting to be served!" if arr.empty?
  puts "Currently serving #{arr.first}."
  arr.shift
end
