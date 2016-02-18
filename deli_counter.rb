require 'pry'
# Write your code here.
def line(array)
	message = "The line is currently"
	line_status = []
	order_name = 0
	if array.size == 0
		message += " empty."	
	else
		message += ":"
		for counter in 0...array.size
			order_name = counter+1
			order_name = " #{order_name.to_s}. #{array[counter]}"
			line_status.push(order_name)
			message += line_status[counter]
			#1. Logan 2. Avi

		end
		#message = message +  ": " + line_status
		#"The line is currently: 1. Logan 2. Avi 3. Spencer"
	end
	
	puts message

end

def take_a_number(array, name)
	array.push(name)
	puts "Welcome, #{name}. You are number #{array.index(name) + 1} in line."

end	

def now_serving(array)
	message = ""
	if array.empty?
		message += "There is nobody waiting to be served!"
	else
		message += "Currently serving #{array.shift}."
	end
	puts message 
end
