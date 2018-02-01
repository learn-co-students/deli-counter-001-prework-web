# Write your code here.
def line(array)
  if array.empty?
    puts "The line is currently empty."
  else
    ret = "The line is currently:"
    count = 0

    for name in array do
      count += 1
      ret << " #{count}. #{name}"
    end

    puts ret
  end
end

def take_a_number(array, name)
  array.push(name)
  number = array.size
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    name = array.shift
    puts "Currently serving #{name}."
  end
end
