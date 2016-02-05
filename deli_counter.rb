# Write your code here.

def line(array)
  if array.empty?
    puts "The line is currently empty." 
  else
  container = ["The line is currently:"]
    array.each_with_index do |name,index|
      container.push("#{index + 1}. #{name}")
    end
    puts container.join(" ")
  end
end

def take_a_number(array, new_customer)
    new_array = []
  if array.empty?
      new_array = array.push(new_customer)
    new_array.each_with_index do |name,index|
      puts "Welcome, #{name}. You are number #{index + 1} in line."
    end
  else
    array.push(new_customer)
    puts "Welcome, #{new_customer}. You are number #{array.index(new_customer) + 1} in line."
  end
end

def now_serving(array)
    if array.empty?
      puts "There is nobody waiting to be served!"
    else
      serving =array.shift
      puts "Currently serving #{serving}."
    end
end
array = ["Logan", "Avi", "Spencer"]
line(array)
take_a_number(array,"Mike")
now_serving(array)
line(array)
now_serving(array)




