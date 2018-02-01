# Older solution
def line(arr)
  if arr.size  == 0
    puts "The line is currently empty."
  else
    puts "The line is currently: "\
      "#{arr.map.with_index { |name, i| "#{i+1}. "\
      "#{name}"}.join(" ")}"
  end
end

def take_a_number(arr, s)
  arr.push(s)
  puts "Welcome, #{s}. You are number #{arr.index(s)+1} in line."
end

def now_serving(arr)
  if arr.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr.shift}."
  end
end