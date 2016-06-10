# Write your code here.
def line(array)
  if (array.size == 0)
    puts "The line is currently empty."
  else
    puts "The line is currently: "
  end
end

def take_a_number(array, name)
  puts "Welcome, #{name}. You are number #{array[]} in line."
end

def now_serving(array)
  puts "Currently serving #{array[]}."
end
