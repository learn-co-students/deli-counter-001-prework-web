katz_deli = []

def line(katz_deli)
	###soft code notes
	#print out a string displaying each person and their place in line
	#iterate through each array value and << to one string
	#print message if array is empty
	#index value can be incremented by 1 to accurately reference place in line

	line_msg = "The line is currently:"
	#line_msg will serve as the base string which we will add names to 
	#when generating the final list

	if katz_deli.any? == false
	puts "The line is currently empty."
	#the .any? method returns true if the array contains 
	#values or false if its empty

	else
		katz_deli.each_with_index do |name, index|

			real_index = index + 1 		
			#to properly display the names in the list i add 1 to the original 
			#index value {1. -- 2. -- 3. --}

			name_for_list = " #{real_index}. #{name}"
			#here i am generating a small string that i will add to #line_msg below

			line_msg = line_msg << name_for_list
			#each iteration will add the string generated above to #line_msg

		end #each loop

	puts line_msg

	end 	
end 		


def take_a_number(katz_deli, name)
	###soft code notes
	#determine index position (and line position) of #name parameter
	#print message with #name and #real_index

	katz_deli << name	
	#adds #name to array

	real_index = katz_deli.index(name) + 1	
	#determines index of name just added to list and adjusts to display properly {1. -- 2. -- 3. --}

	puts "Welcome, #{name}. You are number #{real_index} in line."
end

###

def now_serving(katz_deli)
	###soft code notes
	#print message if array is empty
	#call out the next person in line (aka first person in array)
	#remove that same name from array

	if katz_deli.any? == false
	puts "There is nobody waiting to be served!"
	#check to see if array is empty, if so we'll let the user know there's no one in line
	
	else
		current_customer = katz_deli.first
		#.first will grab the first value in KD array

		puts "Currently serving #{current_customer}."

		katz_deli.shift
		#.shift removes first item from array

	end 
end