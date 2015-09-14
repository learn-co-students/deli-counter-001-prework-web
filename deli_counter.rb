katz_deli = []

def take_a_number(name_arr, new_name)
  name_arr.push(new_name)
   puts "Welcome, #{new_name}. You are number #{name_arr.index(new_name)+1} in line."
  name_arr.index(new_name)+1
end

def now_serving(name_arr)
	if name_arr[0] == nil
		puts "There is nobody waiting to be served!" 
	else
		puts "Currently serving #{name_arr[0]}."
		name_arr.shift
	end
end

def line(name_arr)
	if name_arr[0] == nil
		puts "The line is currently empty."
	else
        		message = "The line is currently:"
       		name_arr.each {|i| message << " #{name_arr.index(i)+1}. #{i}"}
        		puts message
	end
end