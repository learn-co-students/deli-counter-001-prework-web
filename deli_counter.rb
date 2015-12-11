#Write your code here.
#Use the array argument as a formal parameter 
def line(array)
  #If the array size is zero, this means the array is empty therefore the line is empty 
  if array.size == 0 
    #Therefore we display the line is empty
    puts "The line is currently empty."  
    #If the array size is not 0 then there are peopel on line 
  else 
    # We create a new array to add the enumerable to and set it equal to a variable new_list 
    new_list = Array.new 
    #Intialize the counter to 1 for the enumerator seeing as it represents a definite loop based on the size of the array its iterating over
    i = 1 
    #Using the enumerator to enumerate each value in the array, represented by an arbitrary x value, iterate through the array and combine the value for i and the value for x to create a string. We then add the newly combined string to the end of the empty array (new_list) to create a new array i.e [1. Logan, 2. Avi, 3. Spencer"] with the correct order. 
    array.each do |x| new_list.push("#{i}. #{x}") 
      #As we loop through the enumerator, we incriment the accumulator to return the corresponding value of i in the loop, which represents the postion of the person on the line 
      i += 1 
      end 
    #After the new array (new_list) is created we the use the #unshift array method to add the desired suffix ("The line is currently:") string to the beginning of the new array (new_list). i.e ["The line is currently:, 1. Logan, 2. Avi, 3. Spencer"] with the correct order.
    new_list.unshift("The line is currently:")
    #Finally to produce the desired string output we use the #join array method to create the desired string and put it. Using this method allows the #line method to be scalable for any sized line. 
    puts new_list.join(" ")
  end 
end

#Use the array and name argument as formal parameters
def take_a_number(array, name)
  # If there is no one on line or there are already people on line we can add them to the end of the array, which is the beginning of the array if there are no people on line, by using the #push array method. 
  array.push(name)
  # We then combine the string with #array.index(name)+1, which returns the index value of the requested name argument and adds 1 to it seeing as indexing starts at 0 for a computer and lists start with 1 for humans. This obtains the correct corresponding postion on line. We then put out the desired string. Using this method allows the #take_a_number method to be scalable for any sized line.   
  puts ("Welcome, #{name}. You are number #{array.index(name)+1} in line.") 
end 

#Use the array argument as a formal parameter 
def now_serving(array)
  #If the array size is zero, this means the array is empty therefore the line is empty 
  if array.size == 0 
    puts ("There is nobody waiting to be served!")
  else 
  # We output the desired string with the first name in the line by calling the first object or the zero indexed object in the array using, array[0]. We then combine it to put the desired string. i.e "Currently serving Logan."
    puts ("Currently serving #{array[0]}.")
  #Finally we remove the first person in the line that was served by using the array method #shift to remove the first object in the array and leave the remaining objects. i.e ["Avi", "Spencer"]
    array.shift
  end 
end  
  
