def line (array)
  if array.any? == false
    puts "The line is currently empty."
    return "The line is currently empty."
  else
    number_line_string = "The line is currently:"

    idx=0
    while idx < array.length
      number_line_string << (" #{idx+1}. #{array[idx]}")
      idx +=1
    end
  end
  puts number_line_string
  return number_line_string
end

def take_a_number (array, name)
  position = array.length+1
  array.push(name)

  puts "Welcome, #{name}. You are number #{position} in line."
  return "Welcome, #{name}. You are number #{position} in line."
end

def now_serving (array)
  if array.any? == false
    puts "There is nobody waiting to be served!"
    return "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end

end
#Build the now_serving method which should call out (i.e. puts) the next person in line and then remove them from the front. If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".

#Hint: Review adding and removing elements from an array as well as iterating with index numbers. Also, many of the methods to add and remove elements from an array can also be used to add and remove elements to a string. This will help you solve the lab.