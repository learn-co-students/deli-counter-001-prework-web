# Write your code here.
def line(array)
  size = array.size
  temp_array = []
  counter = 1
  person = 0
  if(size == 0)
    puts "The line is currently empty."
  else
    temp_array << "The line is currently:"
    until(person == size)
      temp_array << " #{counter}. #{array[person]}"
      counter += 1
      person += 1
    end
    updated_array = temp_array.join
    puts updated_array
  end
end

def take_a_number(array, name)
  size = array.size
  if(size == 0)
    array.push(name)
    puts "Welcome, #{name}. You are number #{size+1} in line."
  else
    array.push(name)
    puts "Welcome, #{name}. You are number #{size+1} in line."
  end
end

def now_serving(array)
  size = array.size
  if(size == 0)
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
end
