katz_deli = []

def line(katz_deli)
	#soft code notes:::::
	#grab numbers of items in KD array
	#print 'The line is... ' + index + name + index(2) + name(2) + index(3) + name(3)
	#or create an intro string 'The line is currently:' >>index1/name1
	#keep building upon string for each iteration

	line_msg = "The line is currently:"

	if katz_deli.any? == false
	puts "The line is currently empty."

		else
		katz_deli.each_with_index do |name, index|
			real_index = index + 1 #corrects index
			name_for_list = " #{real_index}. #{name}"
			line_msg = line_msg << name_for_list
		end #each loop

	puts line_msg

	end #if loop
end


def take_a_number(katz_deli, name)
	#soft code notes::::
	#print message with #name and #index
	#determine index of name

	katz_deli << name	#adds name to KD array
	real_index = katz_deli.index(name) + 1	#determines index of name just added to list and adjusts
	puts "Welcome, #{name}. You are number #{real_index} in line."
end

###

def now_serving(katz_deli)

	if katz_deli.any? == false
	puts "There is nobody waiting to be served!"
	
		else
		current_customer = katz_deli.first
		puts "Currently serving #{current_customer}."
		katz_deli.shift
	end #if loop
end