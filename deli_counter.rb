# Write your code here.
def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    line = ""
    for position in 0..array.length - 1
      line << " #{position + 1}. #{array[position]}"
    end
    puts "The line is currently:#{line}"
  end
end

def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.length} in line."

end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end
line(["Logan", "Avi", "Spencer"])
