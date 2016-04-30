# Write your code here.


def line(list)
  #if the list is empty, puts the line is empty
  if list.length == 0
     puts "The line is currently empty."
  else
    #else, put a string here and concat item until the end
      string =  "The line is currently:"
    list.each do |name|
      #adds info to the back of the string, including the index and the name of the person
      string = string + " #{list.index(name)+1}. #{name}"
    end
    #infally, prints the string here
    puts string
  end
end



def take_a_number(list,name)
  #pushes the name at the end of the array
  list.push(name)
  #prnts welcome, increament the index by 1 so its homan readable
  puts "Welcome, #{name}. You are number #{list.index(name)+1} in line."
  #Finally, returns the list
  list
end

def now_serving(list)
  #again, check to see if the line is empty
  if ( list.length == 0 )
    puts "There is nobody waiting to be served!"
  else
    #else, shifts, which means remove the first person on the list and print ou the name
    puts "Currently serving #{list.shift}."
  end
  #returns the list
  list
end



