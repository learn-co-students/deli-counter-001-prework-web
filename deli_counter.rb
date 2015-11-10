katz_deli = []  #create an empty array

def take_a_number(katz_deli, name)
  katz_deli.push(name)  #push the name variable onto the end of the array
  position = katz_deli.index(name) + 1 #assign the position to the new array item but add 1 because we do not want to start at zero
  puts "Welcome, #{name}. You are number #{position} in line."  #output the message accordingly inserting the variable strings announcing the name of the person and their position in the array
end


def now_serving(katz_deli)
  if katz_deli.size > 0  #if the array size is greater than zero, then the method needs to output a phrase with that person's name in the first position of the array (i.e. index zero)
    puts "Currently serving #{katz_deli[0]}."  #output message at fist array position
    katz_deli.shift #then remove the array item in the first position
  else
    puts "There is nobody waiting to be served!"  #if array size is less than or equal to zero, then output the phrase accordingly
  end
end


def line(katz_deli)
  if katz_deli.size == 0 #if the array size is zero then it needs to output the phrase below
    puts "The line is currently empty."  #outputting the appropriate phrase if the array size is zero
  else
    line_list = "The line is currently:" #if the array size is not zero (i.e. greater than zero), needs to output list of customers starting with this phrase

    #Need to identify the name and index position. Using each_with_index [referenced via Ruby Doc at <http://ruby-doc.org/core-2.2.3/Enumerable.html>]
    #because needs to pull both of these items. Block assigns the array items to be pulls in the enumeration.
    #Need to add each array item to the string line_list starting with the index [position + 1] so it starts at one rather than zero, then a period, then the name.

    katz_deli.each_with_index {|name, i| line_list << " #{i+1}. #{name}"}
    puts line_list #outputs the string with the array positions and names added to the string in sequence
  end
end

#The below was just so I could see what the output would look like if I ran it with a certain array
katz_deli = ["Ana", "Steve", "John", "Mark"]
take_a_number(katz_deli, "Bubby")
line(katz_deli)
now_serving(katz_deli)