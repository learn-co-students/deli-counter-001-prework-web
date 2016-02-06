katz_deli = Array.new

def line(katz_deli)  
  if katz_deli == []
    puts "The line is currently empty."
  else  
    line_index = ""
    katz_deli.each_with_index do |customer, index|
      line_index += " #{index + 1}. #{customer}"
    end
    puts "The line is currently:#{line_index}"
  end
end

def take_a_number(arr, customer)
  arr.push(customer)
  puts "Welcome, #{customer}. You are number #{arr.length} in line."
end

def now_serving(arr)
  if arr.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr[0]}."
    arr.shift
  end
end