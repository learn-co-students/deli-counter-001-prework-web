def line(deli)
  # method recieves an deli line in the form of an array, 
  #and prints out the current line
  counter = 0
  string = 'The line is currently:'
  if deli.size == 0
    string =  "The line is currently empty."
  else
    deli.each do |variable|
      string = "#{string} #{counter+1}. #{variable}"
      counter += 1
    end 
  end
  puts string
end


def take_a_number(deli,name)
  # method receives a deli array and a name and adds the 
  # name to the deli's line
  deli<<name
  puts "Welcome, #{name}. You are number #{deli.length} in line."

end

def now_serving(deli)
  # method recieves a deli array, and prints the next person in line 
  # while removing that person from the line
  next_customer = deli.shift
  if deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts  "Currently serving #{next_customer}."   
  end
 
end
