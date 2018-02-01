# Write your code here.
def line(array)
 if array.size ==0
  puts "The line is currently empty."
else array.size > 0
  message ="The line is currently:"
  array.each_with_index{|value,index| message.concat("\s#{index+1}. #{value}")}
  puts message 
 end 
end


def take_a_number(array, name)
  if array.size == 0
    array.unshift(name)
    array.each_with_index {|value, index| puts "Welcome, #{value}. You are number #{index+1} in line."}
  else array.size >0
      array.push(name)
      puts "Welcome, #{name}. You are number #{array.size} in line."
    end
  end



def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{array[0]}."
    array.shift()
  end
end


