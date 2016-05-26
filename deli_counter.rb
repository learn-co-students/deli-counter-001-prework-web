def line(katz_deli) 
 if katz_deli.empty? #use ruby method to check to see if the array has any values, returns true if it doesn't
    puts "The line is currently empty."
 else
    announcement = "The line is currently:" # set variable to start building announcement
    katz_deli.each_with_index do |value, index| 
    announcement += " #{index+1}. #{value}" #adds and assigns to announcement
   end
   puts announcement
 end
end

def take_a_number(katz_deli, name)
  if katz_deli.empty?
     puts "Welcome, #{name}. You are number #{katz_deli.size + 1} in line." 
     katz_deli << name #adds new customer to end of line
  else
   puts "Welcome, #{name}. You are number #{katz_deli.size + 1} in line."
   katz_deli << name #adds new customer to end of line
  end
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}." #show person at front of line
    katz_deli.shift #show em the exit
  end
end


