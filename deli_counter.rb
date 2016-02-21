def line(katz_deli)
   if katz_deli.length == 0
     puts "The line is currently empty."
   else
     output = "The line is currently: "
     katz_deli.each_with_index do |element,index|
       output << "#{index+1}. #{element} "
     end
     output = output[0..output.length-2]
     puts "#{output}"
   end
 end

def take_a_number(katz_deli,name)
   katz_deli << name
   puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
 end
 
 #input -> array representation of line
 #output -> String output of person being served
 def now_serving(katz_deli)
   if katz_deli.length == 0
     puts "There is nobody waiting to be served!"
   else
     puts "Currently serving #{katz_deli[0]}."
     katz_deli.shift
   end
 end
