def line(arr)
  line = "The line is currently:" 
  if arr.count == 0
    puts "The line is currently empty."
  else
    arr.each_with_index do |name, idx|
      line += " #{idx+1}. #{name}"
    end
    puts line
  end
end

def take_a_number(arr, name)
  arr << name
  puts "Welcome, #{name}. You are number #{arr.index(name) + 1} in line."
end

def now_serving(arr)
  if arr.count == 0 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr.shift}."
  end
end