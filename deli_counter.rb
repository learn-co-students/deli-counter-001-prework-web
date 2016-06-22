# Write your code here.
katz_deli = []

def line(katz_deli)
	if katz_deli.size > 0
		current_line = "The line is currently:"
		katz_deli.each_with_index do |name, index|
			current_line.concat (" #{index + 1}. #{name}")
		end
		puts current_line
	else
		puts "The line is currently empty."
	end
end

def take_a_number(katz_deli, name)
	katz_deli.push(name)
  	puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
end

def now_serving(katz_deli)
	if katz_deli.size > 1
	   puts "Currently serving #{katz_deli[0]}."
       katz_deli.delete_at(0)	
	else 
	   puts "There is nobody waiting to be served!"
	end
end