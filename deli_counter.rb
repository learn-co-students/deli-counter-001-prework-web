 def line(katz_deli)
   if katz_deli.empty?
     puts "The line is currently empty."
   else
      line = "The line is currently:"
     katz_deli.each_with_index do |customer_name, number|
       line << " #{number + 1}. #{customer_name}"
     end
     puts line
   end
 end

 def take_a_number(katz_deli, new_name)
   katz_deli << new_name
   number_in_line = katz_deli.index(new_name)
   puts "Welcome, #{new_name}. You are number #{number_in_line + 1} in line."
 end

 def now_serving(katz_deli)
   if katz_deli.empty?
     puts "There is nobody waiting to be served!"
   else
     puts "Currently serving #{katz_deli.shift}."
   end
 end
