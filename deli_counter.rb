#Write your code here.
def line(array)
  if array.size == 0 
    puts "The line is currently empty."
  else 
    new_list = Array.new
    i = 1
    array.each do |x| new_list.push("#{i}. #{x}")
      i += 1
      end 
    new_list.unshift("The line is currently:")
    puts new_list.join(" ")
  end 
end

def take_a_number(array, name)
  array.push(name)
  puts ("Welcome, #{name}. You are number #{array.index(name)+1} in line.") 
end 

def now_serving(array)
  if array.size == 0 
    puts ("There is nobody waiting to be served!")
  else 
    puts ("Currently serving #{array[0]}.")
    array.shift
  end 
end  