# Write your code here.
katz_deli = []

def line(line_arr) 
  #shows everyone their current place in the line
  if line_arr.length > 0 
    output_str = "The line is currently: "
    line_arr.each_with_index do |element,index|
        temp_index = index+=1
        if index != line_arr.length
          output_str += "#{temp_index}. #{element} "
        else 
          output_str += "#{temp_index}. #{element}"
          puts output_str
        end 
    end 
  else 
    puts "The line is currently empty."
  end 
end 

def take_a_number(line_arr,name_str)
  #return the person's name along with their position in line
  position = line_arr.length+1
  line_arr << name_str
  puts "Welcome, #{name_str}. You are number #{position} in line."
end 

def now_serving(line_arr) 
#call out (i.e. puts) the next person in line and then remove them from the front
  if line_arr.length > 0
    serving = line_arr[0]
    line_arr.shift
    puts "Currently serving #{serving}."
  else 
    puts "There is nobody waiting to be served!"
  end 
end 