#Build the line method that shows everyone their current place in the line. 
#If there is nobody in line, it should say "The line is currently empty.".
#Build a method that a new customer will use when entering the deli. 
#The take_a_number method should accept two arguments, the array for the current line of people (katz_deli), and a string containing the name of the person wishing to join the line. 
#The method should return the person's name along with their position in line. 
#Build the now_serving method which should call out (i.e. puts) the next person in line and then remove them from the front. 
#If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".


def line(katz_deli)
if katz_deli.length == 0
    puts "The line is currently empty."
  else
    lineup = "The line is currently:"
  #For the following, used each_with_index enumberable
  #Calls block with two arguments, the item and its index, for each item in enum. 
  #Given arguments are passed through to each().
    katz_deli.each_with_index do |name, number| 
    lineup += " #{number+1}. #{name}"
  end
    puts lineup
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end


