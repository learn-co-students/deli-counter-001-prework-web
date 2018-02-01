
def line(arr)
  if arr.empty?
    puts "The line is currently empty."
  else
    arr.map!.each_with_index do |person,index|
       " #{index+1}. #{person}"
    end

    puts "The line is currently:#{arr.join}"
  end
end

def take_a_number(arr,str)
  arr = arr << str
  puts "Welcome, #{str}. You are number #{arr.size} in line."
end

def now_serving(arr)
  if arr.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr.shift}."
  end
end

