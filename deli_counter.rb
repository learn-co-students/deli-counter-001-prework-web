# Write your code here.

def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    arr = []
    katz_deli.each_with_index do |name, index| 
      arr[index] = "#{index + 1}. #{name}"
    end
    puts "The line is currently: " + arr.join(" ")
  end
end

def take_a_number(katz_deli, newCustomer)
  katz_deli.push(newCustomer)
  puts "Welcome, #{newCustomer}. You are number #{katz_deli.index(newCustomer) + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end