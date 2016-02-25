# Write your code here.

katz_deli=[]

def line(katz_deli)
	if katz_deli.any? == false
		puts "The line is currently empty."
		return "The line is currently empty."
	end 
	arr=["The line is currently:"]
	for i in 0..(katz_deli.size-1)
		arr.push (i+1).to_s+ ". " + katz_deli[i].to_s 
	end 
	puts arr.join(" ")
end 



def take_a_number(katz_deli, name)
	katz_deli.push name 
	puts "Welcome, #{katz_deli[katz_deli.size-1]}. You are number #{katz_deli.size} in line."


end 





def now_serving(katz_deli)
	if katz_deli.any? == false
		puts "There is nobody waiting to be served!"
		return "There is nobody waiting to be served!"
	end 
	puts "Currently serving #{katz_deli[0]}."
	katz_deli.shift

end 