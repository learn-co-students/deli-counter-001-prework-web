def line(arr)
  if arr.length == 0
    puts "The line is currently empty."
  else
    output = ""
    output += "The line is currently:"
    arr.each_with_index { |customer, i|
      customer_number = i + 1
      output += " #{customer_number}. #{customer}"
    }
    puts output
  end
end

def take_a_number(arr, name)
  arr.push(name)
  n_in_line = arr.length
  puts "Welcome, #{name}. You are number #{n_in_line} in line."
  arr
end

def now_serving(arr)
  if(arr.length > 0)
    puts "Currently serving #{arr[0]}."
    arr.shift
  else
    puts "There is nobody waiting to be served!"
  end
end