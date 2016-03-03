katz_deli = []

def line(katz_deli)
	line_msg = "The line is currently:"

	if katz_deli.any? == false
		puts "The line is currently empty."
	else
		katz_deli.each_with_index do |name, index|
		name_for_list = " #{index + 1}. #{name}"
		line_msg << name_for_list
	end
	puts line_msg
	end 	
end 		


#determine index position of name parameter
#print message with name and position

def take_a_number(katz_deli, name)
	katz_deli << name	
	puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end


#print message if array is empty
#call out the next person in line (aka first person in array)
#remove that same name from array

def now_serving(katz_deli)
	if katz_deli.any? == false
		puts "There is nobody waiting to be served!"
	
	elsif katz_deli.any? == true
		puts "Currently serving #{katz_deli.first}."
		katz_deli.shift
	end 
end


