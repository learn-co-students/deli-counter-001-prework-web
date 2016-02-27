# Write your code here.


def line(array)
  a = array.length
  i = 0
  if a == 0 || a < 0
    puts "The line is currently empty." 
  else 
    puts "The line is currently: 1. #{array[0]} 2. #{array[1]} 3. #{array[2]}"
    
=begin
    while i < a do
      puts " #{i+1}. #{array[i]}"
      i += 1
    end
=end   
  end 

end



def take_a_number(array,new_customer)
  new_array=array.push(new_customer)
  a = new_array.length
  puts "Welcome, #{new_customer}. You are number #{a} in line."

end

def now_serving(array)
  a = array.length
  if a == 0 
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{array[0]}."
    array.shift
  end
end