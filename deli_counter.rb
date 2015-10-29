# Write your code here.

def take_a_number(array, name)
	array << name
	position = array.index(name) + 1
	puts "Welcome, #{name}. You are number #{position} in line."
	position
end

def now_serving(array)
	if array.empty?
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{array[0]}."
		array.shift
	end

end

def line(array)
	if array.empty?
		line_string = "The line is currently empty."
	else
		line_string = "The line is currently:"
		array.each_with_index do |name, index|
			line_string += " #{index + 1}. #{name}"
		end
	end
	puts line_string
end