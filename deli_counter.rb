def line(queue)
	if queue == []
		puts "The line is currently empty."
	else
		status = "The line is currently:" 
		queue.each_with_index{|customer, i| j = i + 1; status << " #{j}. #{customer}"}
		puts status 
	end
end


def take_a_number(queue, name)
	if queue == []
		queue << name
		puts "Welcome, #{name}. You are number 1 in line."
	else 
		queue << name
		place = queue.index(name) + 1 
		puts "Welcome, #{name}. You are number #{place} in line."
	end
end

def now_serving(queue)
	if queue == []
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{queue.shift}."
	end
end

