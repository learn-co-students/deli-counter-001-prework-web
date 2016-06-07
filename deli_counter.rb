katz_deli = []

def line(katz_deli)
	current_lineup = ""
	katz_deli.each_with_index{ |name, index| current_lineup.insert(-1, " #{index + 1}. #{name}") ; }
	if katz_deli == []
		puts "The line is currently empty."
	else
		puts "The line is currently:#{current_lineup}"
	end
end

def take_a_number(katz_deli, name)
	katz_deli = katz_deli.push(name)
	place = katz_deli.index(name)
	puts "Welcome, #{name}. You are number #{place + 1} in line."
end

def now_serving(katz_deli)
	katz_deli == [] ? puts("There is nobody waiting to be served!") : puts("Currently serving #{katz_deli.shift}.")
end