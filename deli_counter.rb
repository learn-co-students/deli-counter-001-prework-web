
	katz_deli = []

def line(deli)
	if deli.empty?
		puts "The line is currently empty."
	else
		line_string = "The line is currently:"
		deli.each.with_index(1) do |name, index|
			line_string << " #{index}. #{name}"
		end

		puts line_string
	end
end

def take_a_number(deli_ary, name_str)
	deli_ary << name_str
	line_num = 1+deli_ary.index(name_str)	
	puts "Welcome, #{name_str}. You are number #{line_num} in line."
end

def now_serving(deli_ary)
	if deli_ary.empty?
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{deli_ary.first}."
		deli_ary.shift
	end
end
