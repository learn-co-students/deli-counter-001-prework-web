def line(array)
if array.empty?
  puts "The line is currently empty."
else 
 list = array.map.with_index do |element, index| " #{index + 1}. #{element}" 
      end
  variable = "The line is currently:"
  list.each do |number| variable << number
      end
  puts variable
  end
end

def take_a_number(array, person)
  array << person
  puts "Welcome, #{person}. You are number #{array.count} in line."
  end
  
  def now_serving(array)
    if array.empty?
      puts "There is nobody waiting to be served!"
    else 
      puts "Currently serving #{array.first}."
      array.shift

    end
  end

  #why array and not list?
  #why do we not have to call the line fucntion?

#maps is useful, because it allows us to iterate over each element in an array, and whatever gets 
#returned in that block, will get added to a new array

#Map return an array constructed as the result of calling the block for each item in the array.
#Each will evaluate the block but throws away the result of Each block's evaluation and returns the original array.

#list is a variable representing the new array created by maps
#number on line 8 is a variable. in the || it represents whatever is in list, inside of each at the time
#this thing is run
#so it is whateer is inside of each, from the array that each is attached to at the time that array is being run, which in this case is list. 
#it loops over every single thing in list.
#it would return the number variable as a default. but since we call another variable after it, it returns that variable

#We lastly use the << operator to attach what number represents (the list of people represented in array) to the end of what variable represents
#results in a sentence, to us, but the computer sees it as just data


