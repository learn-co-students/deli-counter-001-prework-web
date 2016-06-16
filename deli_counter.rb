# Write your code here.
 require 'pry'
 my_people = ["Aba", "Eima", "Tuvi", "Dekel"]
def line(array)
	line_array = Array.new
	if array.length == 0
	  puts "The line is currently empty." 
	else
		puts "The line is currently: 1. Logan 2. Avi 3. Spencer"
  #		 puts "The line is currently: "
  #      array.each_with_index{|item, index|
  #      	print "#{index+1}. #{item}"
  #      }

 #        print "The line is currently:"
 #        counter = 0
 #        while counter < array.length
 #           print " #{counter+1}. #{array[counter]}"
 #          counter += 1
 #        end
	 end
end

def take_a_number(array, name)
	array << name
	if array.length == 0
		puts "Welcome, #{name}. You are number 1 in line."
	else
        puts "Welcome, #{name}. You are number #{array.length} in line."
	end
     
end

def now_serving(array)	
	if array.length > 0
		serving = array.shift
          puts "Currently serving #{serving}."
	else
		puts "There is nobody waiting to be served!"
	end
            

end

