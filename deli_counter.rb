def line(customers)
	if customers.empty?
		puts "The line is currently empty."
	else
		output = "The line is currently:"
		customers.each_with_index do |customer, index|
			line_number = index + 1
			output << " #{line_number}. #{customer}"
		end
		puts output
	end	
end

def take_a_number(customers, new_customer)
	customers.push(new_customer)
	line_number = customers.length
	puts "Welcome, #{new_customer}. You are number #{line_number} in line."
end

def now_serving(customers)
	if customers.empty?
		puts "There is nobody waiting to be served!"
	else
		customer = customers.shift
		puts "Currently serving #{customer}."
	end
end