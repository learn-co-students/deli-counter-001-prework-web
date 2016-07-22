# Write your code here.

def line(deli_line)
	if deli_line == []
		puts "The line is currently empty."
	else
		place_list = []
		deli_line.each do |name|
			place = deli_line.index(name) + 1
			place_list << " #{place}. #{name}"
		end
		puts "The line is currently:#{place_list.join("")}"
	end
end

def take_a_number(deli_line, name)
	deli_line << name
	place = deli_line.index(name) + 1
	puts "Welcome, #{name}. You are number #{place} in line."
	
end

def now_serving(deli_line)
	if deli_line == []
		puts "There is nobody waiting to be served!"
	else
		currently_served = deli_line.shift
		puts "Currently serving #{currently_served}."
		
	end
end