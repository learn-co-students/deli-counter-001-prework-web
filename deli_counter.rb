# Write your code here.
katz_deli = []

def line(katz_deli)
   if katz_deli.count == 0
     puts "The line is currently empty."
   else
    greeting = "The line is currently:"
     katz_deli.each.with_index(1) do |customer_name, position|
       greeting << " #{position}. #{customer_name}"
     end
     puts greeting
   end
 end

 def take_a_number(katz_deli, new_name)
    puts "Welcome, #{new_name}. You are number #{katz_deli.length + 1} in line."
    katz_deli << new_name
  end


def now_serving(katz_deli)
   if katz_deli == []
     puts "There is nobody waiting to be served!"
   else
     next_up = katz_deli.shift
     puts "Currently serving #{next_up}."
   end
 end
