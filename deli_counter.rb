def line(array)
	if array.length == 0
		puts "The line is currently empty."
	else
		output = "The line is currently:"
		i = 0
		while i <array.length
		output << " #{i+1}. #{array[i]}"
		i +=1
	end
	puts output
	end
end

def take_a_number(array,name)
	puts "Welcome, #{name}. You are number #{array.count+1} in line."
	array << name
end


def now_serving(array)
	if array.count == 0
		puts "There is nobody waiting to be served!"
	else 
		puts "Currently serving #{array[0]}."
		array.shift
	end
end