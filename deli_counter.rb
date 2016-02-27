# Write your code here.



def line(array)
  string=[]
  if array.length == 0
    puts "The line is currently empty."
  else
    array.each_with_index{|array, i|string.push( "#{i + 1}. #{array}");}
    new_string = string.join(" ")
    puts "The line is currently: " + new_string
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