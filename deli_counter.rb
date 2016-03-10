# Write your code here.
#1. Build the `line` method that shows everyone their current place 
  #in the line. If there is nobody in line, it should say `"The line is currently empty."`.

katz_del = []


def line(array)
    

        if array.count == 0 
            
            puts "The line is currently empty."
        
        else
             array.each_with_index do |person, number| 

            puts "The line is currently: #{number+1}. #{person}"
        
        end
          
    end

end



#Hey guys I'm really struggling, not sure what I'm doing wrong. Any help? :)