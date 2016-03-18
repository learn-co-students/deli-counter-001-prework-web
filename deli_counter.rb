# Write your code here.

def take_a_number(array,name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.length} in line."
end

def line(array)
  if array.length==0 then string="The line is currently empty."
  else
    string = "The line is currently:"
    array.each.with_index {|name,i| string << " #{i+1}. #{name}"}
  end
  puts string
end

def now_serving(array)
  puts array.length==0 ? "There is nobody waiting to be served!" : "Currently serving #{array.shift}."
end
