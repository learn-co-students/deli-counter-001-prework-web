#Write your code here.
#Use the array argument as a formal parameter 
#Added the global array variable $line_numbers to keep a max count of serving numbers at the deli.
$line_numbers = (1..99).to_a
#
def line(array)
  if array.size == 0 
    puts "The line is currently empty."  
  else 
    new_list = Array.new 
    i = 1 
    array.each do |x| new_list.push("#{$line_numbers[0]}. #{x}") 
      i += 1 
      end 
    new_list.unshift("The line is currently:")
    puts new_list.join(" ")
  end 
end
def take_a_number(array, name) 
  array.push(name)  
  puts ("Welcome, #{name}. You are number #{$line_numbers[0]} in line.") 
  #Added these lines of code to shift the removed number from the ticketing system back to the end of the array so it can cycle thorugh infinitely from 1 to 99. I used the .shift array method on the global $line_numbers array, to return the value removed from taking a ticket, and added it back to the end of global variable ($line_numbers), using the .push rray method so that the number would be recycled after the deli counter maxes out to 99 leaving the array size always full at 99 available numbers. It then updates the global array value for the next ticket to be taken with the correct order. Therefore when the next person enters into the deli they always get the first available ticket number in the array ($line_numbers[0]) and not just the first ticket as I had previously coded.   
  removed_number = $line_numbers.shift
  $line_numbers = $line_numbers.push(removed_number)
end 

#Use the array argument as a formal parameter 
def now_serving(array) 
  if array.size == 0 
    puts ("There is nobody waiting to be served!")
  else 
    puts ("Currently serving #{array[0]}.")
    array.shift
  end 
end  
  
