# Write your code here.

katz_deli = []

def line(customer)
if customer.empty? == true
  puts "The line is currently empty."
else
katz_deli = "The line is currently:"
customer.each_with_index do |key, value|
  katz_deli << " #{value + 1}. #{key}"
end
puts katz_deli
end 
end


def take_a_number(currentcustarr, newcuststr)
currentcustarr << newcuststr
custnum = currentcustarr.count
puts "Welcome, #{newcuststr}. You are number #{custnum} in line."
end

def now_serving(arg)
if arg.count == 0
  puts "There is nobody waiting to be served!"
else
  serving = arg.fetch(0)
  puts "Currently serving #{serving}."
  arg.delete_at(0)
end
end







