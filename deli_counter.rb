# Grace Juster
# Deli Counter Lab for Flatiron interview 4/11/16

#--------------------------------------------------#

# Program Description 

# Program simulates a computerized queue system that
# adds individuals to queue, informs them of their place in line and reports current line

#--------------------------------------------------#

katz_deli = [] #array that gets updated with line's contents

def line(deli_array) 
#method that shows everyone their current place in line
#if there is nobody in the line, let them know it's empty
	customers_in_line = deli_array.size #store size of line
	customer_counter = 0 #initialize index count
	if customers_in_line == 0 #check if nobody is in line
		puts "The line is currently empty." 
	else
		line_string = "The line is currently:" #save this verbal nugget for later
		#while index is less than length of line i.e. line hasn't ended  
		while customer_counter < customers_in_line 
			#use shovel method to update output with indexes and names 
			#add one to the index count because arrays start with 0 but humans start with 1
			#use that index...to index 
		 	line_string << " #{customer_counter+1}. #{deli_array[customer_counter]}" #this puts on one line but not all together due to while
			customer_counter += 1 #update index count because this is a loop afterall 
		end
		puts line_string #woohoo!!! finally nailed it! 
	end
end
 

def take_a_number(deli_array,name) 
#method that returns person's name along with their position in line 
	deli_array << name #add new person to array using shovel method
	puts "Welcome, #{name}. You are number #{deli_array.size} in line."
	#say hi, and since they were just added their last in line i.e size 
end

def now_serving(deli_array) 
#method that calls out the next person in line and removes them from the list 
#if there is nobody in line let'em know 
	if deli_array.size == 0 #check if nobody is in line
		puts "There is nobody waiting to be served!"
	else
		first_in_line = deli_array.shift #get the first person in line using shift
		puts "Currently serving #{first_in_line}." #alert the masses
	end
end

#--------------------------------------------------#

#Challenges 

#had issues with arguments, had to read through spec to make sure I knew what was needed
#forgot if statements need an else not just an end 
#had to review puts vs print (tried to use print to get it on one line)
#thought the while loop was messing up my output but then realized I could update it w/ a variable 
#on my first attempt it looked like this: 
#else
	#print "The line is currently: "
	#while customer_counter < customers_in_line
		#puts  "#{customer_counter+1}. #{deli_array[customer_counter]} "
		#customer_counter += 1	
	#end
#end

#--------------------------------------------------#


