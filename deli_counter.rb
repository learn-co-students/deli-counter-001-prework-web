# Write your code here.
katz_deli = []
def line(deli)
	if deli.count == 0
		puts "The line is currently empty."
	else
		tmp_str= ""
		deli.each_with_index do |pers,index|
			tmp_str += " #{index+1}. #{pers}" 
		end
		puts "The line is currently:#{tmp_str}"
	end
end

def take_a_number(deli, name)
	line_length = deli.count
	deli << name
	puts "Welcome, #{name}. You are number #{line_length + 1} in line."
end

def now_serving(deli)
	if deli.count == 0
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{deli[0]}."
		deli.shift
	end
end
