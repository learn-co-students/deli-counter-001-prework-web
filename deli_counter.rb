#Deli Counter 


def take_a_number(array, str)
  array << str #Add to the queue
  if array.count == 1 #Check if the added person is the first one. 
    return array.each_with_index{|name, index| puts "Welcome, #{name}. You are number #{index+1} in line."}
  else
    last_person = array.last #Last person from the array
    position_last_person = array.index(last_person) #Index position of the last person
    puts "Welcome, #{last_person}. You are number #{position_last_person+1} in line."
  end
end


def line(array)
  if array.empty? == true #Is the array empty?
    puts "The line is currently empty."
  else
    position_name = [] #Empty array for the position & name
    array.each_with_index {|name, index|  position_name << "#{index+1}. #{name}"} #Enumerate and add to array list of position & names
    puts "The line is currently:" + " " + position_name.join(" ") #Print out the line queue
  end
end


def now_serving(array)
  if array.empty? #Is the array empty?
    puts "There is nobody waiting to be served!" 
  else
    serving = array.shift #Take out the first person from the queue
    puts "Currently serving #{serving}."
  end
end
