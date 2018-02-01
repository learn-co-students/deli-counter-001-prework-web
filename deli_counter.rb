def line(array)
  i = 0
  string = "The line is currently:"
  if array.empty? #if line is empty
    puts "The line is currently empty."
  else
    while i < array.size #loop through the array
      place = " #{i + 1}." + " " "#{array[i]}" #position and the person's name
      string.concat(place) #append place to the string
      i += 1
    end
    puts string #output the final list of people
  end
end

def take_a_number(array, name)
  array.push(name) #add a person's name to the line
  position = array.index(name) + 1 #create their position in line
  puts "Welcome, #{name}. You are number #{position} in line."
  return position
end

def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else
    now = array.shift #remove the first person from the line and serve them
    puts "Currently serving #{now}."     
  end
end