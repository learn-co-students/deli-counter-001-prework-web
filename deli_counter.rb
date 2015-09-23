katz_deli = []
# Write your code here.


def take_a_number(arr,name)
  arr << name 
  puts "Welcome, #{name}. You are number #{arr.length} in line."
end

def now_serving(arr)
  if arr.length > 0
    puts "Currently serving #{arr[0]}."
    arr.shift
  else
    puts "There is nobody waiting to be served!"
  end
end

def line(arr)
  if arr.length < 1
    puts "The line is currently empty."
  else 
    current_line = "The line is currently:"
    arr.each_with_index do |person, i|
      current_line << " #{i+1}. #{person}"
    end
    puts current_line
  end
end


