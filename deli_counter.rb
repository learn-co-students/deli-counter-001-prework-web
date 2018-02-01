# Write your code here.

def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
  else
    line = "The line is currently:"
    deli.each_with_index { |name, num|
      line << " #{num+1}. #{name}" 
    }
    puts line
  end
end

def take_a_number(deli, new_customer)
  deli << new_customer
  puts "Welcome, #{new_customer}. You are number #{deli.size} in line."  
end

def now_serving(deli)
  if deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.first}."
    deli.shift
  end
end

