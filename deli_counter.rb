def line(arr)
  if arr.empty? then puts "The line is currently empty."
  else
    count = 0
    newstring = arr.collect do |name|
      count += 1
      " #{count}. #{name}"
    end.join("")
    puts "The line is currently:" + newstring
  end
end

def take_a_number(arr, name)
  arr.push(name)
  puts "Welcome, #{name}. You are number #{arr.size} in line."
end

  def now_serving(arr)
    if arr.empty? then puts "There is nobody waiting to be served!"
    else puts "Currently serving #{arr.shift}."
    end
  end