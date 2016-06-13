def line(array)
  if(array.size == 0)
    puts "The line is currently empty."
  else
    current_line = "The line is currently: "
    count = 1
    array.each do |name|
      current_line = current_line + "#{count}. #{name} "
      count+=1
    end

    puts current_line[0...-1]
  end
end

def take_a_number(array,name)
  if(array.size == 0)
    puts "Welcome, #{name}. You are number 1 in line."
    array<<name
  else
    index = array.size+1
    puts "Welcome, #{name}. You are number #{index} in line."
    array.push(name)
  end
end

def now_serving(array)
  if(array.size == 0)
    puts "There is nobody waiting to be served!"
  else
    name = array.shift
    puts "Currently serving #{name}."
  end
end
