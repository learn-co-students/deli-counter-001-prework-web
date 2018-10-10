# Write your code here.
def line(array)
	if array.empty?
	  line = "The line is currently empty." 
	else
        line = "The line is currently:"
		array.each_with_index do |costumer, index|
            line << " #{index +1}. #{costumer}"
		end
	end
	puts line
end

def take_a_number(array, name)
	array << name
	if array.empty?
		puts "Welcome, #{name}. You are number 1 in line."
	else
        puts "Welcome, #{name}. You are number #{array.size} in line."
	end     
end

def now_serving(array)	
	if !array.empty?
          puts "Currently serving #{array.shift}."
	else
		puts "There is nobody waiting to be served!"
	end
end
