#correct code

katz_deli = []

def line(katz_deli)
	#soft code notes
	#grab numbers of items in KD array
	#print 'The line is... ' + index + name + index(2) + name(2) + index(3) + name(3)
	#or create an intro string 'The line is currently:' >>index1/name1
	#keep building upon string for each iteration

	line_msg = "The line is currently:"

	if katz_deli.any? == false
	puts "The line is currently empty."
	#the .any? method returns true if the array contains values or false if its empty

	else
		katz_deli.each_with_index do |name, index|

			real_index = index + 1 		
			#to properly display the names in the list i add 1 to the original index value {1. -- 2. -- 3. --}

			name_for_list = " #{real_index}. #{name}"
			#here i am generating a small string that i will add to #line_msg below

			line_msg = line_msg << name_for_list
			#each iteration will add the string generated above to #line_msg

		end #each loop

	puts line_msg

	end 	
end 		


def take_a_number(katz_deli, name)
	#soft code notes
	#print message with #name and #index
	#determine index of name

	katz_deli << name	
	#adds #name to array

	real_index = katz_deli.index(name) + 1	
	#determines index of name just added to list and adjusts to display properly {1. -- 2. -- 3. --}

	puts "Welcome, #{name}. You are number #{real_index} in line."
end

###

def now_serving(katz_deli)

	if katz_deli.any? == false
	puts "There is nobody waiting to be served!"
	#check to see if array is empty, if so we'll let the user know there's no one in line
	
	else
		current_customer = katz_deli.first
		puts "Currently serving #{current_customer}."
		katz_deli.shift
		
	end #if loop
end