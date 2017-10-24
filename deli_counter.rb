# Write your code here.

def line(array)
  if array.length > 0
    str = "The line is currently:"
    array.each_with_index {|x,i|
      str += " #{i+1}. #{x}"
    }
    puts str
  else
     puts "The line is currently empty."
   end
end

def take_a_number(array,person)
  if array.length == 0
    puts "Welcome, #{person}. You are number 1 in line."
    array[0] = person
  else
    puts "Welcome, #{person}. You are number #{array.length + 1} in line."
    array.push(person)
  end
  array
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    name = array.shift
    puts "Currently serving #{name}."
  end
end
