# Write your code here.

def line(array)
  if array.empty?
    puts "The line is currently empty."
  else
    foo = []
    array.each_with_index {|array, i|
      foo.push( "#{i + 1}. #{array}")
    }
    puts "The line is currently: " + foo.join(" ")
  end
end

def take_a_number(array, customer)
  array.push(customer)
  puts "Welcome, #{customer}. You are number #{array.length} in line."
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{array.first}."
    array.shift
  end
end