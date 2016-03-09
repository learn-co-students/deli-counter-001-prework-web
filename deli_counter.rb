# Write your code here.
#1. Build the `line` method that shows everyone their current place 
  #in the line. If there is nobody in line, it should say `"The line is currently empty."`.

katz_del = []


def line(array)

    people_in_line = array.count

    array.each_with_index do |person, place_in_line| 

        if people_in_line > 0 
            puts "#{person}, your place in line is: #{place_in_line}"
        else
            return "The line is currently empty"
        end

    end

end


#Hey guys I'm really struggling, not sure what I'm doing wrong. Any help? :)