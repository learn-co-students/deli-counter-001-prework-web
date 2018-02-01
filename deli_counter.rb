def line(deli)
  if deli.length < 1
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli.each_index { |i| current_line << " #{i.to_i + 1}. #{deli[i.to_i]}"}
    puts current_line
  end
end

def take_a_number(arr, customer)
  arr.push(customer)
  puts "Welcome, #{arr[arr.length - 1]}. You are number #{arr.index(customer) + 1} in line."
end

def now_serving(deli)
  if deli.length < 1
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{ deli[0] }."
    deli.shift
  end
end