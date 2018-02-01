# Write your code here.

def line(customers)
  ###line ~ takes a array of customers and prints their names and number in order
  if line.size == 0
		line_info = "The line is currently empty."
	else
		line_info, num = "The line is currently:", 1
    
		line.each do |customer|
			line_info << " #{num}. #{customer}"
			num += 1
	  end
  end

	puts line_info
end


def take_a_number(line, new_customer)
  ###take_a_number ~ adds a customer to the line and assigns them a number
	line << new_customer
	puts "Welcome, #{new_customer}. You are number #{line.size} in line"
end

def now_serving(line)
  ###now_serving tells what customer is being served
	if line.size == 0
		puts "There is nobody waiting to be served!"
	else
		current_customer = line.pop()
		puts "Currently serving #{current_customer}."
	end
end
