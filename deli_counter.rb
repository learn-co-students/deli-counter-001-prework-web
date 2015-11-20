def line(katz_deli)
	if katz_deli.size() == 0
		puts "The line is currently empty."
	else
		output = "The line is currently:"
		for i in (0..(katz_deli.size()-1)) do 
			output += " #{(i+1)}. #{katz_deli[i]}"
		end
		puts output
	end
end


def take_a_number(katz_deli,name)
	# katz_deli.size()
	katz_deli << name
	puts "Welcome, #{name}. You are number #{katz_deli.size()} in line."
end

def now_serving(katz_deli)
	if katz_deli.size() == 0
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{katz_deli[0]}."
		katz_deli.shift()
	end
end

#line(["Mary","Joe","Bob"])