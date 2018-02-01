def line(array)  
  katz_deli = Array.new
  if array == []
    puts "The line is currently empty."
    return "The line is currently empty."
  else
    array.each_with_index do |customer, index|
      katz_deli << "#{index + 1}. #{customer}"
    end
    puts "The line is currently: #{katz_deli.join(" ")}"
    return "The line is currently :#{katz_deli.join(" ")}"
  end
end

def take_a_number(arr, customer)
  arr << customer
  place = arr.index(customer) + 1
  puts "Welcome, #{customer}. You are number #{place} in line."
  return place
end

def now_serving(arr)
  if arr == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr.shift}."
  end
end