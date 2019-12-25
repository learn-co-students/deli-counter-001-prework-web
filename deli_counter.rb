katz_deli= []
other_deli= ["Logan", "Avi", "Spencer"]

def line(array)
    puts "The line is currently empty." if array.empty?

  line_status= "The line is currently:"
  if array.empty? == false
    sequence = 0
      for name in array
        sequence += 1
        line_status << " #{sequence}." << " #{name}"
      end
    puts line_status
  end

end

def take_a_number(array, new_customer_name)
order_num= 0
  array.push(new_customer_name)

  for name in array
    order_num += 1
    greetings = "Welcome, #{name}. You are number #{order_num} in line."
  end
    puts greetings
end

def now_serving(array)
  puts "There is nobody waiting to be served!" if array.empty?

  if array.empty? == false
  current_customer= array.shift
  puts "Currently serving #{current_customer}."
  end
end