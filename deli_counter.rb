def line(arr)
  if arr.length == 0
    return puts "The line is currently empty."
  else
    k = "The line is currently: "
    for x in 0..arr.length-1
      k = k + "#{x+1}. #{arr[x]}"
      if x < arr.length-1
        k = k + " "
      end
    end
  end
  return puts k
end

def take_a_number(arr,name)
  arr.push(name)
  puts "Welcome, #{name}. You are number #{arr.length} in line."
  return arr
end

def now_serving(arr)
  if arr.length == 0
    return puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr[0]}."
    arr.shift
  end
end
