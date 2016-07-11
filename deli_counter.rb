# Write your code here.
katz_deli = []

def line(arr)
  if arr.count == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    arr.each_with_index do | value, index |
      message += " #{index + 1}. #{value}"
    end
    puts message
  end
end

def take_a_number(arr, str)
  arr = arr.push(str)
  puts "Welcome, #{str}. You are number #{arr.index(str) + 1} in line."
end

def now_serving(arr)
  if arr.count == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr[0]}."
    arr.shift()
  end
end
