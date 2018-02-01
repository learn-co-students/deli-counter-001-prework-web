def line(array)
if array.count == 0
  puts "The line is currently empty."
else announcement = "The line is currently:"
  array.each.with_index(1) do |customer, number|
   announcement += " #{number}. #{customer}"
    end
    puts "#{announcement}"
  end
end# Write your code here.

def take_a_number(array, customer)
  if array.size != 0
  array << customer
  puts "Welcome, #{customer}. You are number #{array.size} in line."
  else
  array << customer
  puts "Welcome, #{customer}. You are number #{array.size} in line."
  end
end 


def now_serving(array)
  if array.size != 0
    puts "Currently serving #{array.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end