katz_deli = []

def line(arr)
  if arr.count == 0
  puts "The line is currently empty."
    else
    message = "The line is currently:"
  arr.each_with_index do |x, y| message += " #{y+1}. #{x}"
  end
  puts message
end
end

def take_a_number(arr, name)
  arr.push(name)
  puts "Welcome, #{name}. You are number #{arr.count} in line."
end

def now_serving(arr)
  if arr.count == 0
    puts "There is nobody waiting to be served!"
    else
    puts "Currently serving #{arr.shift}."
  end
end