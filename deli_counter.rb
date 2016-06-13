def line(deli)
  if(deli.size == 0)
    puts "The line is currently empty."
  else
    current_line = "The line is currently: "
    count = 1
    deli.each do |name|
      current_line = current_line + "#{count}. #{name} "
      count+=1
    end

    puts current_line[0...-1]
  end
end

def take_a_number(deli,name)
  if(deli.size == 0)
    deli<<name
    puts "Welcome, #{name}. You are number 1 in line."
  else
    deli.push(name)
    puts "Welcome, #{name}. You are number #{deli.size} in line."
  end
end

def now_serving(deli)
  if(deli.size == 0)
    puts "There is nobody waiting to be served!"
  else
    name = deli.shift
    puts "Currently serving #{name}."
  end
end
