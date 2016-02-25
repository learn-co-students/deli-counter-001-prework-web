katz_deli = [] 


def line(deli_line)
message = "The line is currently:"
  
  if deli_line.empty? == true
    puts "The line is currently empty."
  else
    deli_line.each_with_index do |name, ticket|
      message << (" #{ticket + 1}. #{name}" )
   end
   puts message
 end
end

def take_a_number(katz_deli, person)
	katz_deli.push(person)
	katz_deli.index(person)
	new_number = katz_deli.index(person) + 1
	puts "Welcome, #{person}. You are number #{new_number} in line."
	end

def now_serving(up_next)
	if up_next.empty?
	puts "There is nobody waiting to be served!"
	else
	puts "Currently serving #{up_next.first}."
	up_next.shift
	end
end





