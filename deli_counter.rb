# Write your code here.
def line(array)
   if array.length != 0
      position_in_line = array.each_with_index.map do |name, index|
        " #{index + 1}. #{name}"
      end
         puts "The line is currently:" + position_in_line.join
   else
      puts "The line is currently empty."
   end
end

def take_a_number(array, string)
      array.push(string)
   puts "Welcome, #{string}. You are number #{array.size} in line."
   #"Welcome, Ada. You are number 1 in line."
end #end for the method total

def now_serving(array)
   if array.length != 0
      puts "Currently serving #{array.first}."
      array.shift
   else
      puts "There is nobody waiting to be served!"
   end
end
