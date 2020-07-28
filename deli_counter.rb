# Write your code here.
# Write your code here.
def line(arr)
  e = "The line is currently empty."
	s = "The line is currently: "
	arr.each_with_index {|customer, index| s<< "#{index+1}. #{customer} "}
  arr.any? ? (puts s.rstrip) : (puts e)
end
def take_a_number(arr, new)
  arr.push(new)
  puts "Welcome, #{new}. You are number #{arr.index(new)+1} in line."
end
def now_serving(arr)
  arr.empty? ? (puts "There is nobody waiting to be served!") : (puts "Currently serving #{arr.first}.")
  arr.shift
end
