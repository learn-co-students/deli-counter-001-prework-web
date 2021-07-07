def line(array)
  if array[0] == nil
    puts "The line is currently empty."
  else 
    queue = "The line is currently:"
    line_number=1
    array.each do |name|
      queue << " #{line_number}. #{name}"
      line_number+=1
    end
    puts queue
  end
end

def take_a_number(array, name)
  array.push(name)
  if array[0]==nil
    puts "Welcome, #{name}. You are number 1 in line."
  else 
    line_number = array.index(name) + 1

    puts "Welcome, #{name}. You are number #{line_number} in line."
  end
end

def now_serving(array)
  if array[0] == nil
    puts "There is nobody waiting to be served!"
  else
    who_is_next = array[0]
    puts "Currently serving #{who_is_next}."
    array.shift
  end
end

