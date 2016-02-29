katz_deli = []

def line(deli_line)
	if deli_line.size < 1
		puts "The line is currently empty."
	else
		message = "The line is currently:"
		deli_line.each_with_index do |name, place|
			message += " #{place+1}. #{name}"
		end
		puts message
	end
end

def take_a_number(deli_line, name)
	deli_line.push(name)
	place = deli_line.size
	puts "Welcome, #{name}. You are number #{place} in line."
end

def now_serving(deli_line)
	if deli_line.size < 1
		puts "There is nobody waiting to be served!"
	else
		name = deli_line.shift
		puts "Currently serving #{name}."
	end
end