# Write your code here.
def line(deli)
	if deli == []
		puts "The line is currently empty."
	else
		message = "The line is currently:"
		deli.each_with_index do |name, index|
			#<< is not a bitwise operator!!
			message << " #{index + 1}. #{name}"
		end
		puts message
	end
end

def take_a_number(deli, name)
	deli << name
	puts "Welcome, #{name}. You are number #{deli.size} in line."
end

def now_serving(deli)
	if deli == []
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{deli[0]}."
		deli.shift
	end
end
