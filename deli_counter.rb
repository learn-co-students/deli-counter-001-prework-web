# Write your code here.
def line(deli)
	if deli.empty? == true
		puts "The line is currently empty."
	else
		lineMsg =  "The line is currently: "	
		deli.each_with_index{|val,idx|
			lineMsg += (idx+1).to_s+". #{val} "
		}
		puts lineMsg.strip!
	end
end

def take_a_number(deli, name)
	deli << name
	num = deli.size
	puts "Welcome, #{name}. You are number #{num} in line."
end

def now_serving(deli)
	if deli.empty? == true
		puts "There is nobody waiting to be served!"
	else
		name = deli.shift
		puts "Currently serving #{name}."
	end
end
